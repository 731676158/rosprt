#include "ros/ros.h"
#include "demo_01/Person.h"

int main(int argc, char* argv[])
{
	setlocale(LC_ALL,"");
	ros::init(argc,argv,"BanZhuRen");
	ros::NodeHandle nh;
	ros::Publisher pub=nh.advertise<demo_01::Person>("liaotian",10);
	demo_01::Person person;
	person.name="张三";
	person.age=20;
	person.height=1.73;
	ros::Rate rate(1);
	while(ros::ok())
	{
		++person.age;
		pub.publish(person);
		rate.sleep();
		ros::spinOnce();
	}
	return 0;
}
