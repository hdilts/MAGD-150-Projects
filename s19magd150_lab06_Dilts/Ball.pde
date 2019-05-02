class Ball{
  
//creates ball
 void drawBall() {
  fill(0,0,255);
  ellipse(x, y, w, h);
}
//makes the ball move
void moveBall() {  
  x = x + speedX*2;
  y = y + speedY*2;
 
}
//this allows the circle to bounce
void bounceOff() {
 if ( x > width - w/2) {
    setup();
    speedX = -speedX;
  
  } else if ( x < 0 + w/2) {
    setup();

  }
  if ( y > height - h/2) {
    speedY = -speedY;
  } else if ( y < 0 + h/2) {
    speedY = -speedY;
  }
} 
}
