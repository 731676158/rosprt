#include "ros/ros.h"
#include "turtlesim/Spawn.h"

int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  ros::init(argc,argv,"service_call");
  ros::NodeHandle nh;
  ros::ServiceClient client=nh.serviceClient<turtlesim::Spawn>("/spawn");
  turtlesim::Spawn spawn;
  spawn.request.x=1;
  spawn.request.y=2;
  spawn.request.theta=1.57;
  spawn.request.name="turtle2";
  ros::service::waitForService("/spawn");
  
  bool flag=client.call(spawn);
  if (flag)
  {
    ROS_INFO("乌龟生成成功，新乌龟叫：%s",spawn.response.name);
  }
  else 
  {
    ROS_INFO("生成失败！");
  }

  ros::spin();
  
  return 0;
}
