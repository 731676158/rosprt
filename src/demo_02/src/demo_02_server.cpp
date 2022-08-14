#include "ros/ros.h"
#include "demo_02/Addints.h"

bool doNums(demo_02::Addints::Request & request,
	demo_02::Addints::Response & response)
{
	int num1=request.num1;
	int num2=request.num2;
	ROS_INFO("收到到请求数据:num1=%d,num2=%d",num1,num2);
	int sum=num1+num2;
	response.sum=sum;
	ROS_INFO("求和结果：%d",sum);
	return true;
}

int main(int argc,char* argv[])
{
	setlocale(LC_ALL,"");
	ros::init(argc,argv,"heishui");
	ros::NodeHandle nh;
	ros::ServiceServer server=nh.advertiseService("addInts",doNums);
	ros::spin();	
return 0;
}
