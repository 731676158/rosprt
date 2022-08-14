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

  //ros::Duration(2).sleep();
  ros::Rate rate(10);
  while(ros::ok())
  {
    try
    {
      geometry_msgs::TransformStamped son1toson2 = bf.lookupTransform("turtle2","turtle1",ros::Time(0));
      ROS_INFO("son1相对于son2的信息：父级：%s，子级：%s 偏移量(%.2f,%.2f,%.2f)",
		son1toson2.header.frame_id.c_str(),
		son1toson2.child_frame_id.c_str(),
		son1toson2.transform.translation.x,
		son1toson2.transform.translation.y,
		son1toson2.transform.translation.z
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
