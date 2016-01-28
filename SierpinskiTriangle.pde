public void setup()
{
	size(640, 640);
}
int len=640;
public void draw()
{
	background(0, 0, 0);
	sierpinski(0,640,len);
}
public void mouseDragged()//optional
{
	len=mouseX;
}
public void sierpinski(int x, int y, int lenny) 
{
	if (lenny>=10) {
		sierpinski(x, y, lenny/2);
		sierpinski(x+lenny/2, y, lenny/2);
		sierpinski(x+lenny/4, y-lenny/2, lenny/2);
	} else {
		triangle(x,y,x+lenny/2,y-lenny,x+lenny,y);
	}
}