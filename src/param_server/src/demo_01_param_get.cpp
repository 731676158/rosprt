#include "ros/ros.h"
#include <vector>
#include <string>

int main(int argc,char* argv[])
{
  setlocale(LC_ALL,"");
  ros::init(argc,argv,"");
  /****************nh & param*********************************/
  ros::NodeHandle nh;
  //param
  //double radius = nh.param("radius",0.3);
  double radius = ros::param::param("radius",0.3);
  ROS_INFO("radius=%.2f",radius);
  //getparam
  double radius2=0.0;
  //bool result=nh.getParam("radius",radius2);
  //getparamcached底层性能提升，创建本地缓存
  bool result=nh.getParamCached("radius",radius2);
  if (result)
  {
    ROS_INFO("获取的半径是:%.2f",radius2);
  }
  else
  {
    ROS_INFO("查询不到对应的变量");
  }
  //getparamnames
  std::vector<std::string> names;
  nh.getParamNames(names);
  for(auto &&name : names)
  {
    ROS_INFO("遍历的元素:%s",name.c_str());
  }
  //hasparam
  bool flag1=nh.hasParam("radius");
  bool flag2=nh.hasParam("randius");
  ROS_INFO("radius存在吗？%d",flag1);
  ROS_INFO("randius存在吗？%d",flag2);
  //searchparam
  std::string key;
  nh.searchParam("radius",key);
  ROS_INFO("搜索结果：%s",key.c_str());
  return 0;
}
