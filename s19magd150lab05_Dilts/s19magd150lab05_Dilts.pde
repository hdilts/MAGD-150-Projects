int rX, rY;      
int cX, cY;  
int rSize = 100;    
int cSize = 100;   
color rColor, cColor, bColor;
color curColor;
boolean rOver = false;
boolean cOver = false;

void setup() {
  
  size(600, 300);
  rColor = color(#448FD8);
  cColor = color(#D88744);
  bColor = color(102);
  curColor = bColor;
  rX = width/2-rSize-10;
  rY = height/2-rSize/2;
  cX = width/2+cSize/2+10;
  cY = height/2;
  
  ellipseMode(CENTER);
  
}

void draw() {
  
  update(mouseX, mouseY);
  background(curColor);
  
  if (rOver) {
    
  } else {
    fill(rColor);
  }
  noStroke();
  rect(rX, rY, rSize, rSize);
  
  if (cOver) {
   
  } else {
    fill(cColor);
  }
  noStroke();
  ellipse(cX, cY, cSize, cSize);
  
   fill(#448FD8);
  textSize(32);
  text("Universe", 10 , rY + 50); 
  text("Square", 30, rY + 80); 
  
  
   fill(#D88744);
  textSize(32);
  text("Universe", 450 , rY + 50); 
  text("Circle", 480, rY + 80); 



}

void update(int x, int y) {
  if ( overCircle(cX, cY, cSize) ) {
    cOver = true;
    rOver = false;
  } else if ( overRect(rX, rY, rSize, rSize) ) {
    rOver = true;
    cOver = false;
  } else {
    cOver = rOver = false;
  }
  

}

void mousePressed() {
  if (cOver) {
    curColor = cColor;
  }
  if (rOver) {
    curColor = rColor;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
