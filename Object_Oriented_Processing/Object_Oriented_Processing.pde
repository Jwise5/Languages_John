/*

SS6 OOP John Wise

using SS5 as a starting point I created classes of objects that
display a shifting plaid pattern in front of either area that
is not currently selected to enter into the full animation.
The plaid patterns vary in array size and therefor pattern.

This is also my first project adding sound

Music by Arcmatx off Casual Mix - 2010


//////////////////

tunnel / chess / flowers

click on one of the three images to enter its full animation
click anywhere in the animation to return to the beginning

Thanks!

*/

// used this weeks lesson (Schiffman Ch. 9 & 9 ) to help inform the sketch
// used this weeks lesson (Schiffman Ch. 9 & 15) to help inform the sketch
///////////////////////////////////////
import processing.sound.*;
//SoundFile song;
///////////////////////////////////////
/*
Box myBox1;
Box myBox2;
Box myBox3;
*/

///////////
Box[] myBox1 = new Box[15];
Box[] myBox2 = new Box[50];
Box[] myBox3 = new Box[25];
////////////
Cat[] myCat1 = new Cat[15];
Cat[] myCat2 = new Cat[50];
Cat[] myCat3 = new Cat[25];
////////////
Box myBox4;
Box myBox5;
Box myBox6;

Box myBox7;
Box myBox8;
Box myBox9;
///////////////////////////////////////

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
 ///////////////////////////
 //song = new SoundFile(this, "OOP1.mp3");
 //song.play();
 ///////////////////////////
 /*
 myBox1 = new Box (color(0,0,0,170), 1, 0, 3);
 myBox2 = new Box (color(0,0,0,170),427,0,3);
 myBox3 = new Box (color(0,0,0,170),853,0,3);
 myBox4 = new Box (color(0,0,0,170),427,0,4);
 myBox5 = new Box (color(0,0,0,170),427,0,5);
 */
 ////////////
 for (int b = 0; b < myBox1.length; b++) {
   myBox1[b] = new Box(color(0,0,0,20), 1, 0, b*2);
 }
 for (int b = 0; b < myBox2.length; b++) {
   myBox2[b] = new Box(color(0,0,0,20), 427, 0, b*2);
 }
 for (int b = 0; b < myBox3.length; b++) {
   myBox3[b] = new Box(color(0,0,0,20), 853, 0, b*2);
 }
 
 //////////////////////////
 for (int j = 0; j < myCat1.length; j++) {
   myCat1[j] = new Cat(color(0,0,0,20), 1, 0, j*2);
 }
 for (int j = 0; j < myCat2.length; j++) {
   myCat2[j] = new Cat(color(0,0,0,20), 427, 0, j*2);
 }
 for (int j = 0; j < myCat3.length; j++) {
   myCat3[j] = new Cat(color(0,0,0,20), 853, 0, j*2);
 }
 //////////////////////////
 
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
  println(mouseX + " : " + mouseY);

  
  if (stage == 1) {
  
  if (mouseX >=0 && mouseX <=426 && mouseY>=0 && mouseY<=height){
     image(splash1,0,0);
            //////////////////////////////////////
  /*
  //myBox1.move2();
  //myBox1.display();
  myBox2.move2();
  myBox2.display();
  myBox3.move3();
  myBox3.display();
  //myBox4.move2();
  //myBox4.display();
  //myBox5.move2();
  //myBox5.display(); */
  //////////////////
 /* for (int b = 0; b < myBox1.length; b++) {
    myBox1[b].move1();
    myBox1[b].display();
  }  */
  for (int b = 0; b < myBox2.length; b++) {
    myBox2[b].move2();
    myBox2[b].display();
  } 
  for (int b = 0; b < myBox3.length; b++) {
    myBox3[b].move3();
    myBox3[b].display();
  }
  //////////////////
  /*
  for (int j = 0; j < myCat1.length; j++) {
    myCat1[j].move11();
    myCat1[j].display2();
  } */
  for (int j = 0; j < myCat2.length; j++) {
    myCat2[j].move11();
    myCat2[j].display2();
  }
  for (int j = 0; j < myCat3.length; j++) {
    myCat3[j].move11();
    myCat3[j].display2();
  }
  
  //////////////////
  ////////////////////////////////////// 
  }  else if (mouseX >=427 && mouseX <=854 && mouseY>=0 && mouseY<=height){
     image(splash2,0,0);
            //////////////////////////////////////
for (int b = 0; b < myBox1.length; b++) {
    myBox1[b].move1();
    myBox1[b].display();
  }  /*
  for (int b = 0; b < myBox2.length; b++) {
    myBox2[b].move2();
    myBox2[b].display();
  }  */
  for (int b = 0; b < myBox3.length; b++) {
    myBox3[b].move3();
    myBox3[b].display();
  }

///////////////////////
for (int j = 0; j < myCat1.length; j++) {
    myCat1[j].move11();
    myCat1[j].display2();
  } /*
  for (int j = 0; j < myCat2.length; j++) {
    myCat2[j].move11();
    myCat2[j].display2();
  } */
  for (int j = 0; j < myCat3.length; j++) {
    myCat3[j].move11();
    myCat3[j].display2();
  }
/////////////////////////
/*
  
  
  
  myBox1.move1();
  myBox1.display();
  myBox3.move3();
  myBox3.display();
  
  
  */
  //////////////////////////////////////
  }  else if (mouseX >=855 && mouseX <=1280 && mouseY>=0 && mouseY<=height){
     image(splash3,0,0);
            //////////////////////////////////////
  
  for (int b = 0; b < myBox1.length; b++) {
    myBox1[b].move1();
    myBox1[b].display();
  }  
  for (int b = 0; b < myBox2.length; b++) {
    myBox2[b].move2();
    myBox2[b].display();
  } /*
  for (int b = 0; b < myBox3.length; b++) {
    myBox3[b].move3();
    myBox3[b].display();
  } */
  //////////////////////////
  for (int j = 0; j < myCat1.length; j++) {
    myCat1[j].move11();
    myCat1[j].display2();
  }
  for (int j = 0; j < myCat2.length; j++) {
    myCat2[j].move11();
    myCat2[j].display2();
  } /*
  for (int j = 0; j < myCat3.length; j++) {
    myCat3[j].move11();
    myCat3[j].display2();
  } */
  //////////////////////////
  
  
  
  
  /*
  
  
  myBox1.move1();
  myBox1.display();
  myBox2.move2();
  myBox2.display();
  
  
  */
  //////////////////////////////////////
  }  else{
     image(splash,0,0);
       //////////////////////////////////////
 /* myBox1.move4();
  myBox1.display();
  myBox2.move4();
  myBox2.display(); */
  //////////////////////////////////////
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

/////////////////////////////////////////
class Box {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Box (color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    //rectMode(CENTER);
    rect(xpos, ypos, 10, 720);
  }
  
  void move1(){
    xpos = xpos + xspeed;
    if (xpos > 419){
      xpos = 0;
    }
  } void move2(){
    xpos = xpos + xspeed;
    if (xpos > 843){
      xpos = 426;
    }
  } void move3(){
    xpos = xpos + xspeed;
    if (xpos > 1270){
      xpos = 853;
    }
  } void move4(){
    xpos = xpos + xspeed;
    if (xpos > 426){
      xpos = 0;
    }
  }
}

/////////////////////////////////////////
class Cat {
  color c;
  float xpos;
  float ypos;
  float yspeed;
  
  Cat (color tempC, float tempXpos, float tempYpos, float tempYspeed) {
    
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempYspeed;
  }
  
  void display2() {
    stroke(0);
    fill(c);
    //rectMode(CENTER);
    rect(xpos, ypos, 426, 10);
  }
  
  void move11(){
    ypos = ypos + yspeed;
    if (ypos > height){
      ypos = 0;
    }
  } void move12(){
    ypos = ypos + yspeed;
    if (ypos > 843){
      xpos = 426;
    }
  } void move13(){
    ypos = ypos + yspeed;
    if (ypos > 1270){
      ypos = 853;
    }
  } void move14(){
    ypos = ypos + yspeed;
    if (ypos > 426){
      ypos = 0;
    }
  }
}
/////////////////////////////////////////

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