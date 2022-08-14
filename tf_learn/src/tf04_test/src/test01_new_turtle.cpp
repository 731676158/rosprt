#include "ros/ros.h"
#include "turtlesim/Spawn.h"


int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  ros::init(argc,argv,"set_turtle");
  ros::NodeHandle nh;
  ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
  ros::service::waitForService("/spawn");
  turtlesim::Spawn spawn;
  spawn.request.x=1.0;
  spawn.request.y=2.0;
  spawn.request.theta=1.57;
  spawn.request.name="turtle2";
  bool flag=client.call(spawn);
  if (flag)
  {
    ROS_INFO("新的乌龟生成，名字是：%s",spawn.request.name.c_str());
  }
  else
  {
    ROS_WARN("乌龟生成失败！请重新操作！");
  }
  
  return 0;
}
