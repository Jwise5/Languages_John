/*

SS5 John Wise

tunnel / chess / flowers

click on one of the three images to enter its full animation
click anywhere in the animation to return to the beginning

Thanks!

*/


// used this weeks lesson (Schiffman Ch. 9 & 15) to help inform the sketch


int image1total = 24;
int index1 = 0; 
PImage [] pics1 = new PImage[image1total];

int image2total = 44;
int index2 = 0; 
PImage [] pics2 = new PImage[image2total];

int image3total = 37;
int index3 = 0; 
PImage [] pics3 = new PImage[image3total];

PImage splash;
PImage splash1;
PImage splash2;
PImage splash3;

int stage=1;

float [] random = new float [37];

void setup() {
  size(1280,720);
 
  for (int i = 0; i < pics1.length; i ++) {
    pics1 [i] = loadImage ("tunnel" + i + ".png");
    
  } for (int n = 0; n < pics2.length; n ++) {
    pics2 [n] = loadImage ("chess" + n + ".png");
    
  } for (int x = 0; x < pics3.length; x ++) {
    pics3 [x] = loadImage ("flower" + x + ".png");
    
  } for (int z = 0; z < random.length; z ++) {
    random [z] = random (0,37);
  }
  
  splash = loadImage("splash.png");
  splash1 = loadImage("splash1.png");
  splash2 = loadImage("splash2.png");
  splash3 = loadImage("splash3.png");
  
  
  
}


void draw() {
  frameRate(12);
  background(0);
  
  if (stage == 1) {
  
  if (mouseX >=0 && mouseX <=426 && mouseY>=0 && mouseY<=height){
     image(splash1,0,0); 
  }  else if (mouseX >=427 && mouseX <=854 && mouseY>=0 && mouseY<=height){
     image(splash2,0,0); 
  }  else if (mouseX >=855 && mouseX <=1280 && mouseY>=0 && mouseY<=height){
     image(splash3,0,0); 
  }  else{
     image(splash,0,0);
  }
  
 }
 
   if (stage == 2) {
  
   image(pics1[index1], 0, 0);
   index1 = (index1 + 1) % pics1.length;
  
 } else if (stage==3){
  
   image(pics2[index2], 0, 0);
   index2 = (index2 + 1) % pics2.length;
   
 } else if (stage==4){
  
   image(pics3[index3], 0, 0);
   index3 = (index3 + 1) % pics3.length;
   
   println(random);
   
 }
 
}


      void mousePressed() {
        
    if (stage <=1 && mouseX >=0 && mouseX <=427 && mouseY>=0 && mouseY<=height) {
    stage = 2;
  } else if (stage <=1 && mouseX >=428 && mouseX <=853 && mouseY>=0 && mouseY<=height) {
    stage = 3;
  } else if (stage <=1 && mouseX >=854 && mouseX <=1280 && mouseY>=0 && mouseY<=height) {
    stage = 4;
  } else if (stage >=2 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=height) {
    stage = 1;
  }
        
}