class VectLine
{
  PVector location;
  PVector velocity;
  
  int vel_x = 2;
  int vel_y = 2;
  
  VectLine()
  {
    location = new PVector(width/2 -333,height/2 -256);
    velocity = new PVector(vel_x,vel_y);
  }
  
  void move()
  {
    location.add(velocity);
    velocity.rotate(radians(PI));
  }
  
  void bounce()
  {
    if((location.x >= width) || (location.x <= 0))
    {
      velocity.x = velocity.x * -1;
    }
    if((location.y >= height) || (location.y <= 0))
    {
      velocity.y = velocity.y * -1;
    }
  }
  
  void display()
  {
    stroke(191,c,191);
    line(location.x,location.y,0,0);
    
    fill(c,c,c,c);
    textSize(32);
    text("LoubiTek",0,0);
  }
}