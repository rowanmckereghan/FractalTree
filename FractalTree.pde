private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(11, 18, 35);
	fill(194, 197, 204);
	ellipse(80, 50, 60, 60);
	fill(171/3, 218/3, 242/3);
	rect(0, 240, 640, 240);         
	drawBranches(320, 240, 100, ((3*PI)/(double)2)); 
	drawBranches(320, 240, 100, -((3*PI)/(double)2)); 
	line(0, 240, 640, 240);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	stroke(x/2,255,y/2);
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	double angle3 = angle + ( 2* branchAngle);
	double angle4 = angle - ( 2* branchAngle);
	branchLength = branchLength * fractionLength;   
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	int endX4 = (int)(branchLength*Math.cos(angle4) + x);
	int endY4 = (int)(branchLength*Math.sin(angle4) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	line(x, y, endX3, endY3);
	line(x, y, endX4, endY4);
	if (branchLength < smallestBranch)
	{}
	else
	{
		drawBranches(endX1, endY1, branchLength/1.2, angle1);
		drawBranches(endX2, endY2, branchLength/1.2, angle2);
		drawBranches(endX3, endY3, branchLength/1.2, angle3);
		drawBranches(endX4, endY4, branchLength/1.2, angle4);
	}
} 
