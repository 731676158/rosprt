#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "geometry_msgs/TransformStamped.h"


int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  ros::init(argc,argv,"tfs_sub");
  ros::NodeHandle nh;

  tf2_ros::Buffer bf;
  tf2_ros::TransformListener listener(bf);
  geometry_msgs::PointStamped ps;
  
  ps.header.frame_id="son1";
  ps.header.stamp=ros::Time(0.0);
  ps.point.x=1.0;
  ps.point.y=2.0;
  ps.point.z=3.0;
  //ros::Duration(2).sleep();
  ros::Rate rate(10);
  while(ros::ok())
  {
    geometry_msgs::PointStamped ps_out;
    try
    {
      geometry_msgs::TransformStamped son1toson2 = bf.lookupTransform("son2","son1",ros::Time(0));
      ROS_INFO("son1相对于son2的信息：父级：%s，子级：%s 偏移量(%.2f,%.2f,%.2f)",
		son1toson2.header.frame_id.c_str(),
		son1toson2.child_frame_id.c_str(),
		son1toson2.transform.translation.x,
		son1toson2.transform.translation.y,
		son1toson2.transform.translation.z
		);

      ps_out=bf.transform(ps,"son2");
      ROS_INFO("转换后的坐标值：（%.2f,%.2f,%.2f）,参考的坐标系：%s",
		ps_out.point.x,
		ps_out.point.y,
		ps_out.point.z,
		ps_out.header.frame_id.c_str()
		);
    }
    catch(const std::exception& e)
    {
      ROS_INFO("产生异常：%s",e.what());
    }
    rate.sleep();
    ros::spinOnce();
  }

  return 0;
}
