float x = 100;
float y = 100;

float Xspeed = random(1, 10);   //random speed of x within 1 to 10
float Yspeed = random(1, 10);   //random speed of y within 1 to 10

void setup() {
  size(640, 360);
}

void draw() {

  background(50);

  x = x + Xspeed;     //incrementing the value of x by xspeed(random value between 1 to 10) which makes the ball move x-axis.
  y = y + Yspeed;     //incrementing the value of y by yspeed(random value between 1 to 10) which makes the ball move y-axis.


  // Ball bounce back when it hits the end of left or right side.
  if ( x > width || x < 0 ) {        
    Xspeed = Xspeed * -1;
  }


  // Ball bounce back when it hits the end of top or bottom side.
  if ( y > height || y < 0 ) {      
    Yspeed = Yspeed * -1;
  }
  
  //  draws the ellipse on the given position.
  ellipse(x, y, 16, 16);     
}
