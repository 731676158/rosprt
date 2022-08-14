#include "ros/ros.h"

int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  //采用nh方式
  ros::init(argc,argv,"set_bgcolor");
  ros::NodeHandle nh;
  nh.setParam("background_r",0);
  nh.setParam("background_g",0);
  nh.setParam("background_b",0);
  //
  //ros::init(argc,argv,"change_color");
  //ros::param::set("/background_r",0);
  //ros::param::set("/background_g",0);
  //ros::param::set("/background_b",0);  
  return 0;
}
