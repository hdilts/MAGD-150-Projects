
float w = 30;
float h = 30;



void setup() {
  
  size(600, 600);
  background(32);

}
void draw(){}

void mousePressed() {
  
  noStroke();
  float d = dist(width/2, height/2, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  float gray = map(d, 0, maxDist, 0, 255);
  fill(gray);
  rect(0, 0, width, height);

  w = (w + 1) % (height / 3.5);
  h = (h + 1) % (height / 3.5);

  
  fill(255); 
  ellipse(mouseX, mouseY, w, h);

int a = max(22 - 2, 15 - 5);
int b = min(3 * 10, 4 * 10);
  ellipse(300, 300, a, b);
 
  rect(298, 310, 4, 40);
  
  fill(50);
  ellipse(300, 300, a - 5, b - 5);
  
  println("(" + mouseX + ", " + mouseY + ")");
  println(h, w);
  println(d);
    

}

  
    


 
