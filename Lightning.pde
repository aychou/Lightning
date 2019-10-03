
int startX=150;
int startY =40;
int endX = 150;
int endY = 150;
PImage photo;
PImage phot;
void setup()
{
  size(300,300);
  background(0);
  strokeWeight(3);
  photo = loadImage("star.png");
  phot = loadImage("sky.png");
  noLoop();
  image(phot, 0, 0,300, 300);
image(photo, 120, 0, 100, 100);
}
void draw()
{
	 
	while(endY<=300)
	{
	 	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	 	endX=startX-(int)(Math.random()*18-9);
	 	endY=startY+(int)(Math.random()*9);
	 	line(startX,startY,endX,endY);
	 	startX=endX;
	 	startY=endY;
	}
	
	image(phot, 0, 0,300, 300);
	image(photo, 120, 0, 100, 100);

}
void mousePressed()
{
	startY=40;
	startX=150;
	endX = 150;
	endY = 150;
	redraw();
}