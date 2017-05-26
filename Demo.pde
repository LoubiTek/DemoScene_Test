PImage MyHead;

int x = 1280/2;
int y = 720/2;
int r = 0;
int c = 0;

float scale;
boolean log;

VectLine L;

void setup()
{
  background(16,c,32,c);
  size(1280,720,JAVA2D);
  //fullScreen();
  frameRate(60);
  L = new VectLine();
  
  scale = width/256;
  
  smooth(2);
  MyHead = loadImage("MyHead.png");
}

void draw()
{
  translate(x,y);
  rotate(radians(r*PI));
  
  stroke(191,c,191,c);
  fill(c,c,c,c);
  rect(0,0,32,32);
  rect(0,0,-32,-32);
  
  strokeWeight(.1);
  r += 666;
  
  VectLine();
  
  for (int i = 0; i < scale; i++)
  {
    colorMode(HSB, (i+1) * scale * 13);
    fill(second() +13 % (i+1)* scale * 13 -c);
    ellipse(i*scale, 0, scale, height -1024);
    ColorsSwitch();
  }
  
  /* Break draw
  if (mousePressed == log)
  {
    r -= 666;
  }*/
  
  ColorsSwitch();
  tint(BLUR,0,c,c);
  image(MyHead,16,16);
  
  for (int j = 0; j < scale; j++)
  {
    colorMode(HSB, (j+1) * scale * 13);
    fill(second() +13 % (j+1)* scale * 13 -c);
    line(j*scale +r, 0, r+ scale *j, height);
  }
  
  ColorsSwitch();
  tint(0,c,c,c);
  image(MyHead,-191,127);
  text("LoubiTek",-127,256);
}

void VectLine()
{
  L.move();
  L.bounce();
  L.display();
}

void ColorsSwitch()
{
  if (c > 255) c = 0;
  {
   stroke(0);
   fill(c,c,c,c);
   c++;
  }
}