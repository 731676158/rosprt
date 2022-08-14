#include "ros/ros.h"
#include "demo_02/Addints.h"

int main(int argc,char* argv[])
{
	setlocale(LC_ALL,"");
	
	if (argc!=3)
	{
		ROS_INFO("提交的参数格式不对！");
		return -1;
	}

	ros::init(argc,argv,"dabao");
	ros::NodeHandle nh;
	ros::ServiceClient client= nh.serviceClient<demo_02::Addints>("addInts");
	demo_02::Addints ai;
	ai.request.num1=atoi(argv[1]);
	ai.request.num2=atoi(argv[2]);
	//调用判断服务器状态的函数
	// client.waitForExistence();
	//与上一句实现相同功能
	ros::service::waitForService("addInts");
	bool flag = client.call(ai);
	if (flag) ROS_INFO("响应成功！结果是:%d",ai.response.sum);
	else ROS_INFO("处理失败！");
	return 0;
}
