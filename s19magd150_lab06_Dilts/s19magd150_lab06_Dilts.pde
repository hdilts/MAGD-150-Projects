//based off code from https://forum.processing.org/two/discussion/11161/pong-game
//rewritten and formed into classes
int x, y, w, h, speedX, speedY;
int paddleXL, paddleYL, paddleW, paddleH, paddleS;
int paddleXR, paddleYR;
boolean upL, downL;
boolean upR, downR;
color colorL = color(255,0,0);
color colorR = color(0, 255, 0, 50);
  Ball myBall;
  Paddles myPaddles;
void setup(){
  size(500, 500);
  x = width/2; 
  y = height/2;
  w = 50;
  h = 50;
  speedX = 4;
  speedY = 4;
  paddleXL = 40;
  paddleYL = height/2;
  paddleXR = width-40;
  paddleYR = height/2;
  paddleW = 30;
  paddleH = 100;
  paddleS = 5;
  myBall = new Ball();
  myPaddles = new Paddles();

}

void draw(){
  
  background(0);

 myBall.drawBall(); 
 myBall.moveBall();
 myBall.bounceOff()s;
 myPaddles.drawPaddles();
 myPaddles.movePaddlse();
 myPaddles.restrictPasddle();
 myPaddles.contactPaddle();

}

//makes the paddles move when keys are pressed
 void keyPressed() {
if (key == 'w' || key == 'W') {
    upL = true;
  }
  if (key == 's' || key == 'S') {
    downL = true;
  }
  if (keyCode == UP) {
    upR = true;
  }
  if (keyCode == DOWN) {
    downR = true;
  }
}
 
//this creates a false key interaction
 
void keyReleased() {
  if (key == 'w' || key == 'W') {
    upL = false;
  }
  if (key == 's' || key == 'S') {
    downL = false;
  }
  if (keyCode == UP) {
    upR = false;
  }
  if (keyCode == DOWN) {
    downR = false;
  }


}
