#include "ros/ros.h"
#include "test_head/head.h"

int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  ros::init(argc,argv,"");
  head_test::myHead mh;
  mh.headPrt();
  return 0;
}

