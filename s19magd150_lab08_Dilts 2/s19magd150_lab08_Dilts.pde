import processing.pdf.*;
String[] headlines = {
  "Coming Soon"
};
boolean recordScreen;
String fileName;

float x; // Horizontal location
int index = 0;
PFont Georgia;
PFont Verdana;

String a = "The\nTriangle";
String g = "ghiJKLMnopqr";

void setup() {
  surface.setTitle("The Triangle Poster");

  pixelDensity(displayDensity());
  size(800, 1000);
  background(32);
  rectMode(CENTER);
  
  fileName = "Poster";

  Georgia = createFont("Georgia", 80, true);
  Verdana = createFont("Verdana", 48, true);

}

void draw() {
  //starts the record for pdf
   if (recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
  background(32);

  textAlign(CENTER, CENTER);
  textFont(Georgia);
  fill(#5BC8E8);
  // toUpperCase() lets you capitalize all the characters in a string.
  text(a.toUpperCase(), width / 2.0, 200);
  
  fill(#E55BE8);
  triangle(400, 400, 600, 700, 200, 700); 
  
  fill(#FCFEFF); 
  textFont(Verdana);
  textAlign (LEFT);

  // A specific String from the array is displayed according to the value of the "index" variable.
  text(headlines[index], x, height-150); 

  // Decrement x
  x = x - 3;

  // If x is less than the negative width, then it is off the screen
  // textWidth() is used to calculate the width of the current String.
  float w = textWidth(headlines[index]); 
  if (x < -w) {
    x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % headlines.length;
    }
    
   //stops the recording
    if (recordScreen) {
    endRecord();
    recordScreen = false;
  }
//Prints names of actors/actresses in text file
String[] lines = loadStrings("list.txt");
println("There are " + lines.length + " actors/actresses");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}

 
}
//When the right mouse button is pressed it will save a pdf of that frame
void mousePressed() {
  if (mouseButton == RIGHT) {
    recordScreen = true;
  } 
}
