#include "ros/ros.h"
#include "sensor_msgs/PointCloud2.h"
#include "sensor_msgs/PointCloud.h"
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include "pcl_ros/io/pcd_io.h"
#include "std_msgs/String.h"
#include <vector>

//
#include "lidar_localization/global_defination/global_defination.h"

#include "lidar_localization/subscriber/cloud_subscriber.hpp"
#include "lidar_localization/subscriber/imu_subscriber.hpp"
#include "lidar_localization/subscriber/gnss_subscriber.hpp"

#include "lidar_localization/tf_listener/tf_listener.hpp"

#include "lidar_localization/publisher/cloud_publisher.hpp"
#include "lidar_localization/publisher/odometry_publisher.hpp"
//

#define PTSBFSZ 30  //30帧点云的拼接

typedef pcl::PointCloud<pcl::PointXYZ> PointType;
std::vector<PointType> points_frames;
std::vector<std::vector<PointType>> points_vec;

int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");

  ros::init(argc,argv,"sub_points");
  ros::NodeHandle nh;
 
  std::shared_ptr<CloudSubscriber> cloud_sub_ptr = std::make_shared<CloudSubscriber>(nh, "/kitti/velo/pointcloud", 100000);
  std::shared_ptr<IMUSubscriber> imu_sub_ptr = std::make_shared<IMUSubscriber>(nh, "/kitti/oxts/imu", 1000000);
  std::shared_ptr<GNSSSubscriber> gnss_sub_ptr = std::make_shared<GNSSSubscriber>(nh, "/kitti/oxts/gps/fix", 1000000);
  std::shared_ptr<TFListener> lidar_to_imu_ptr = std::make_shared<TFListener>(nh, "imu_link", "velo_link");

  std::shared_ptr<CloudPublisher> cloud_pub_ptr = std::make_shared<CloudPublisher>(nh, "current_scan", 100, "/map");
  std::shared_ptr<OdometryPublisher> odom_pub_ptr = std::make_shared<OdometryPublisher>(nh, "lidar_odom", "map", "lidar", 100);

  std::deque<CloudData> cloud_data_buff;
  std::deque<IMUData> imu_data_buff;
  std::deque<GNSSData> gnss_data_buff;
  Eigen::Matrix4f lidar_to_imu = Eigen::Matrix4f::Identity();
  bool transform_received = false;
  bool gnss_origin_position_inited = false;
  ////////
  CloudData cloud_data_sum;
  int save_pcd_count = 0;
  ///////
  ros::Rate rate(100);
  while (ros::ok()) {
      ros::spinOnce();

      cloud_sub_ptr->ParseData(cloud_data_buff);
      imu_sub_ptr->ParseData(imu_data_buff);
      gnss_sub_ptr->ParseData(gnss_data_buff);

      if (!transform_received) {
          if (lidar_to_imu_ptr->LookupData(lidar_to_imu)) {
              transform_received = true;
              // LOG(INFO) << "lidar to imu transform matrix is:" << std::endl << lidar_to_imu;
          }
      } else {
          while (cloud_data_buff.size() > 0 && imu_data_buff.size() > 0 && gnss_data_buff.size() > 0) {
              CloudData cloud_data = cloud_data_buff.front();
              IMUData imu_data = imu_data_buff.front();
              GNSSData gnss_data = gnss_data_buff.front();
              ////////
                
              ///////
              double d_time = cloud_data.time - imu_data.time;
              if (d_time < -0.05) {
                  cloud_data_buff.pop_front();
              } else if (d_time > 0.05) {
                  imu_data_buff.pop_front();
                  gnss_data_buff.pop_front();
              } else {
                  cloud_data_buff.pop_front();
                  imu_data_buff.pop_front();
                  gnss_data_buff.pop_front();
                  Eigen::Matrix4f odometry_matrix;
                  if (!gnss_origin_position_inited) {
                      gnss_data.InitOriginPosition();
                      gnss_origin_position_inited = true;
                  }
                  gnss_data.UpdateXYZ();
                  odometry_matrix(0,3) = gnss_data.local_E;
                  odometry_matrix(1,3) = gnss_data.local_N;
                  odometry_matrix(2,3) = gnss_data.local_U;
                  odometry_matrix.block<3,3>(0,0) = imu_data.GetOrientationMatrix();
                  odometry_matrix *= lidar_to_imu;

                  pcl::transformPointCloud(*cloud_data.cloud_ptr, *cloud_data.cloud_ptr, odometry_matrix);
                    
                  cloud_pub_ptr->Publish(cloud_data.cloud_ptr);
///////////修改save_pcd_count来获得想要保存的帧数
                  save_pcd_count++;
                  if(save_pcd_count >=20 && save_pcd_count <= 40)
                  {
                        //通过此函数来给点云制造偏移
                      pcl::transformPointCloud(*cloud_data.cloud_ptr, *cloud_data.cloud_ptr, lidar_to_imu*lidar_to_imu*lidar_to_imu*lidar_to_imu*lidar_to_imu*lidar_to_imu);
                      (*cloud_data_sum.cloud_ptr) += (*cloud_data.cloud_ptr);
                  }
                  if(save_pcd_count ==40)
                  {
                        //此路径要根据自己的电脑路径修改
                      pcl::io::savePCDFileASCII ("/home/jeff/lidar1/pcds/save/test2_noise.pcd", *cloud_data_sum.cloud_ptr);
                  }
//////////////
                  //cloud_pub_ptr->Publish(cloud_data_sum.cloud_ptr);
                  odom_pub_ptr->Publish(odometry_matrix);
              }
          }
      }

      rate.sleep();
































  points_read pr("/kitti/velo/pointcloud",100);  
  
  while(ros::ok())
  {
    pr.parseData();
  }

  for(int i=0;i<points_vec.size();++i)
  {
    PointType pts;
    for(int j=0;j<points_vec[i].size();++j)
    {
      pts += points_vec[i][j];
    }
    pcl::io::savePCDFileASCII ("/home/jeff/rosprt/lidar_test/src/read_pointcloud/pcds/"+std::to_string(i)+".pcd", pts);
  }

  return 0;
}
