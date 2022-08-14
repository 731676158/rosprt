#include "ros/ros.h"

int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  ros::init(argc,argv,"det_param_c");
  ros::NodeHandle nh;
  //参数增---------------------------------
  //nh
  nh.setParam("type","xiaohuang");
  nh.setParam("radius",0.15);
  //ros::param
  ros::param::set("type_param","xiaobai");
  ros::param::set("radius_param",0.2);
  //修改------------------------------------
  nh.setParam("radius",0.5);
  ros::param::set("radius_param",0.4);
  return 0;
}
