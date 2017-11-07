



int anim1Images = 24;
int anim2Images = 44;
int anim3Images = QQ;

int anim1Index = 0;
int anim2Index = 0;
int anim3Index = 0;

PImage [] anim1images = new PImage [anim1Images];
PImage [] anim2images = new PImage [anim2Images];
PImage [] anim3images = new PImage [anim3Images];

PImage splash;
PImage splash1;
PImage splash2;
PImage splash3;

PFont font;

int state=1;

void setup(){
  size(1280,720);
  background(255);
  
  frameRate (12);
  
  splash = loadImage("splash.png");
  splash1/3 = loadImage("splash1/3");
  splash2/3 = loadImage("splash2/3");
 // splash3/3 = loadImage("splash3/3");
  
  font = createFont("TheLightFont.ttf",50);
 textFont(font);
  
  for (int i = 0; i < images.length; i ++) {
    images [i] = loadeImage ("tunnel" + i + ".png");
  
  } for (int i = 0; i < images.length; i ++) {
    images [i] = loadeImage ("chess" + i + ".png");
    
  } for (int i = 0; i < images.length; i ++) {
    images [i] = loadeImage ("tunnel" + i + ".pmg");
  
  } 
  
}

void draw(){
  // (use in a minute) else if (mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
  //    image (QQQ,0,0);
    //}
    //splash
  if (state == 1){
    
    
    if(mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
      image (QQQ,0,0);
     
    } 
      //animation state 2
      else if (mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
      image (QQQ,0,0);
    } 
      //animation state 3
      else if (mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
      image (QQQ,0,0);
    }
  
  
  else if(state==2){
    //animation 1
    
    image(anim1images[anim1Index], 0, 0);
    anim1Index = (anim1Index + 1) % anim1images.length;
    
    //return to beginning
    if (mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
      image (QQQ,0,0);
    }
  
  
  } else if (state==3){
    //animation 2
    
    image(anim2images[anim2Index], 0, 0);
    anim2Index = (anim2Index + 1) % anim2images.length;
    
    // return to beginning
    if (mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
      image (QQQ,0,0);
    
    
    
  }
  
    else if (state==4){
    //animation 3
    
    image(anim3images[anim3Index], 0, 0);
    anim3Index = (anim3Index + 1) % anim3images.length;
    
    //return to beginning
    if (mouseX >= QQQ && mouseX <= QQQ && mouseY >= QQQ && mouseY <= QQQ) {
      image (QQQ,0,0);

    }  
    
}


void mousePressed(){
  
    if (state<=1 && mouseX >=0 && mouseX <=427 && mouseY>=0 && mouseY<=height) {
    stage = 2;
  } else if (state<=1 && mouseX >=428 && mouseX <=854 && mouseY>=0 && mouseY<=height) {
    stage = 3;
  } else if (state<=1 && mouseX >=855 && mouseX <=1280 && mouseY>=0 && mouseY<=height) {
    stage = 4;
  } else if (state<=1 && mouseX >=QQQ && mouseX <=QQQ && mouseY>=QQQ && mouseY<=QQQ) {
    stage = 2;
  }
  
}
  }
  