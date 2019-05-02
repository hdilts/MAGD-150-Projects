import processing.video.*;
import processing.sound.*;
PImage frame;
Capture reflection;
SoundFile song;
boolean playing = false;
BrownNoise noise;


void setup(){
  size (640,960); 
  //imports image
  //image source https://www.pexels.com/photo/rectangular-wooden-frame-mirror-1188410/
  frame = loadImage("Mirror.jpg");
  
  //starts capture from camera
  reflection = new Capture(this, 640,480);
  reflection.start();
  
  //imports sound file
  //"Wind Chimes, A.wav" by InspectorJ (www.jshaw.co.uk) of Freesound.org
  song = new SoundFile(this, "windchimes.wav");
  
  //plays brown noise 
  noise = new BrownNoise(this);
  noise.play();

}


  void mousePressed(){
    
   //displays image from camera and plays song when mouse presses
  reflection.read();
     song.play();
     song.rate(.85);
  }

 void draw() {
  
   //displays image from file 
   image(frame, 0, 0, width, height);
   
   //displays image from camera with a tint, opacity, and rotated 
  tint (200, 20);
  rotate(PI/10);
  image(reflection, 305, 175, 240, 380);

 }
