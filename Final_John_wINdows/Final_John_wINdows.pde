/*
John Wise Languages Final

        "wINdows"
-come take a look inside- 


Use the mouse to look inside at whats happening
take a look in every room

--------------------------------------------------

all illlustration and video & animation by John Wise
music in room 1 & 6 by Noah Ruiz
music for "Moment of Calm" by charles mingus
music for E Therapist / window 3 - free domain
instrumental music for window 4 // meditation by Gradient Fade
spoken meditation for window 4 // meditation by Anna Wise
music for window 5 / chess by John Wise
music for "you'be been all up in my dome" by Professor Brian Oblivion

Thanks!!!

*/

import processing.video.*;




//////////////////////////////////
//libraries
//////////////////////////////////
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


///////////////////////////////////
//end libraries
///////////////////////////////////

///////////////////////////////////
//preload
///////////////////////////////////
import ddf.minim.*;
 
Minim minim;
AudioPlayer song;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;
AudioPlayer song5;
AudioPlayer song6;
AudioPlayer song7;
AudioPlayer clip1;

int loopcount;

Movie movie;
Movie movie2;
Movie movie3;
Movie movie4;
Movie movie5;
Movie movie6;
Movie movie7;

// loop info from http://code.compartmental.net/minim/audioplayer_method_loop.html
////////////////////////////////////
PImage windowref;
PImage tempbrick;
PImage Chess;
PImage Chess2;
PImage sexyroom1;
PImage sexyroom2;
PImage sexyroomred;
PImage tvroom;
PImage selfportrait1;
PImage sprinklebg;
PImage sprinklefront;
PImage sprinkleblack;
PImage brickt;
PImage win1t;
PImage win2t;
PImage win3t;
PImage win4t;
PImage win5t;
PImage win6t;
PImage kitchen1;
PImage kitchen2;
PImage brick;
PImage win1;
PImage win2;
PImage win3;
PImage win4;
PImage win5;
PImage win6;


//thanks shuhei!
int roomend01 = 0;
int roomend02 = 0;
int roomend03 = 0;
int roomend04 = 0;
int roomend05 = 0;
int roomend06 = 0;




int yposb = -2480;
int yposa = -2160;
float nah;


int image2total = 44;
int index2 = 0; 
PImage [] pics2 = new PImage[image2total];




//int g;
////////////// e-therapist
int state = 1;

PFont font;
PFont font2;
int stage=1;
int amount = 1;


PImage office1;
PImage office0;
PImage check;
PImage plant;
PImage glass;
PImage knob;
PImage couch;
PImage hit1;
PImage hit2;
PImage hit3;

//thank you jun for the help!
float x,y;
//float state=0;

float bill;
String s;


///////////////////////////////

void setup(){
  size(1280,720);
  
    minim = new Minim(this);
    song = minim.loadFile("Martini Sunset.mp3");
    song1 = minim.loadFile("street 4.wav");
    //song2 = minim.loadFile("05 Congeniality.mp3");
    song2 = minim.loadFile("No Happier.wav");
    song3 = minim.loadFile("justlikeisaid.wav");
    song4 = minim.loadFile("No Happier.wav");
    song5 = minim.loadFile("jazz.wav");
    song6 = minim.loadFile("Professor Brian Oblivion - Dissertation- Volume 1 - 08 Birthlines.wav");
    clip1 = minim.loadFile("nutritious.wav");
    
    //song6 = minim.loadFile
    
    
    //////////////////////////////
     //movie = new Movie(this, "red flicker.mov");
     //movie.loop();
     movie2 = new Movie(this, "static1.mp4");
     movie3 = new Movie(this, "moment of calm.mp4");
     movie4 = new Movie(this, "tunnel.mp4");
     movie5 = new Movie(this, "meditation.mp4");
     movie6 = new Movie(this, "sexyred.mov");
     movie7 = new Movie(this, "bar & tone.mp4");
     
     
     
     
    //////////////////////////////
    windowref = loadImage("window reference.png");
    tempbrick = loadImage("temp brick.png");
    Chess = loadImage("chess.png");
    Chess2 = loadImage("chess screen.png");
    sexyroom1 = loadImage("sexy room 1.png");
    sexyroom2 = loadImage("sexy room light on.png");
    sexyroomred = loadImage("sexy room red.png");
    tvroom = loadImage("TV room.png");
    selfportrait1 = loadImage("selfportrait1.png");
    sprinklebg = loadImage("sprinklebg.png");
    sprinklefront = loadImage("sprinklefront.png");
    sprinkleblack = loadImage("sprinkleblack.png");
    brickt = loadImage("brickt.png");
    win1t = loadImage("win1t.png");
    win2t = loadImage("win2t.png");
    win3t = loadImage("win3t.png");
    win4t = loadImage("win4t.png");
    win5t = loadImage("win5t.png");
    win6t = loadImage("win6t.png");
    kitchen1 = loadImage("Kitchen.png");
    kitchen2 = loadImage("Kitchen2.png");
    brick = loadImage("brick.png");
    win1 = loadImage("win1.png");
    win2 = loadImage("win2.png");
    win3 = loadImage("win3.png");
    win4 = loadImage("win4.png");
    win5 = loadImage("win5.png");
    win6 = loadImage("win6.png");
    
    
    
    
    
    for (int r = 0; r < pics2.length; r ++) {
    pics2 [r] = loadImage ("chess" + r + ".png");
    }
    
    /////////////////////////////e therapist images
    office1 = loadImage("office3.png");
    office0 = loadImage("office2.png");
    check = loadImage("check.png");
    plant = loadImage("plants.png");
    glass = loadImage("glass.png");
    knob = loadImage("knob.png");
    couch = loadImage("couch.png");
    hit1 = loadImage("hit1.png");
    hit2 = loadImage("hit2.png");
    hit3 = loadImage("hit3.png");


    font = createFont("TheLightFont.ttf",26);
    textFont(font); 
    //thanks jun!!!
    s="$";
    bill = int(random(300)); 
    x=500;
    y=500;

    nah = int(random(150));
    
    textAlign(CENTER,CENTER);
    

}

void movieEvent(Movie m) {
  movie2.read();
  movie3.read();
  movie4.read();
  movie5.read();
  movie6.read();
  movie7.read();
}

void draw(){    
  println(state);
  println(mouseX + " : " + mouseY);
  println(roomend01);
  //println(stage);
  //g = random(0,180);
  
  
  if (state == 1){
    //window splash
    //song.play();
   // song1.play();
    song1.play();
    song.pause();
    song.rewind();
    song2.pause();
    song2.rewind();
    song3.pause();
    song3.rewind();
    song4.pause();
    song4.rewind();
    song5.pause();
    song5.rewind();
    song6.pause();
    song6.rewind();
    clip1.pause();
    clip1.rewind();    
    movie2.stop();
    movie3.stop();
    movie4.stop();
    movie5.stop();
    movie6.stop();
    movie7.stop();
    //song5.pause();
    //song6.pause();
  if (mouseX >=220 && mouseX <=352 && mouseY>=68 && mouseY<=329){
    background(100);
    image(win1,0,0);
    //text("enter room 1", width/2, height/2); 
    //image(couch,0,0); 
     ///////////////minim test
    //song.play();
    //song2.pause();
    //////////////////
  }  else if (mouseX >=563 && mouseX <=695 && mouseY>=68 && mouseY<=321 ) {
    background(100);
    image(win2,0,0);
    //text("enter room 2",width/2,height/2);
  } else if (mouseX >=939 && mouseX <=1069 && mouseY>=71 && mouseY<=318 ) {
    background(100); 
    image(win3,0,0);
    //text("enter room 3",width/2,height/2);
  } else if (mouseX >=225 && mouseX <=349 && mouseY>=417 && mouseY<=660 ) {
    background(100); 
    image(win4,0,0);
    //text("enter room 4",width/2,height/2);
  } else if (mouseX >=569 && mouseX <=693 && mouseY>=420 && mouseY<=669 ) {
    background(100); 
    image(win5,0,0);
    //text("enter room 5",width/2,height/2);
  } else if (mouseX >=947 && mouseX <=1073 && mouseY>=416 && mouseY<=663 ) {
    background(100); 
    image(win6,0,0);
    //text("enter room 6",width/2,height/2);
  } else {
    
    image(brick,0,0);
   // text("Brick wall with six windows",width/2,height/2);
   
  }
  } if (state==2){
    //window 1
    song1.pause();
    song1.rewind();
    song2.play();
    
    //tint(50);
    //image(sexyroomred,0,0);
    //tint(255);
    //image(sexyroomred,0,0);
    if (mouseX >=582 && mouseX <=841 && mouseY>=112 && mouseY<=720 ) {
    image(sexyroom2,0,0);
   // text("Brick wall with six windows",width/2,height/2);
  } else {
    //background(0); 
    //text("enter room 6",width/2,height/2);
   image(sexyroom1,0,0);
   movie6.play();
   image(movie6,0,0);
   //tint(150);
   //image(movie, 0, 0, width, height);
   //tint(255);
   
  } 
    //nah = random(0,150);
    //fill(255,0,0,nah);
    //rect(0,0,1280,720);
    ////////////////
    // background(0);
    //text("room 1",width/2,height/2);
    //text("sexy room with silhouette of a lady's legs with smooth rnb and audio of her saying get out", width/2, height/2+100);
 
 
  
    
  } else if (state==3){
    //window 2
    song1.pause();
    song1.rewind();
    //song3.play();
    ////////////////
    if (mouseX >=510 && mouseX <=685 && mouseY>=263 && mouseY<=394 ) {
    movie2.stop();  
    movie7.play();
    image(movie7,0,0);
   // text("Brick wall with six windows",width/2,height/2);
  } else {
    movie7.stop();
    movie2.play();
    image(movie2,0,0); 
    image(tvroom,0,0);
    //background(0); 
    //text("enter room 6",width/2,height/2);
   //image(sexyroom1,0,0);
   //movie6.play();
   //image(movie6,0,0);
   //tint(150);
   //image(movie, 0, 0, width, height);
   //tint(255);
   
  }
    
    
    /*
    background(50);
    text("room 2", width/2,height/2);
    text("video room with image of tv playing video", width/2,height/2+100);
    text("nobody in room with vacant creepy feeling and sound of static", width/2,height/2+200);
    */
    
  } else if (state==4){
    //window 3
   // song.pause();
   // song2.play();
    ////////////////
   
   // background(100);
   // text("room 3",width/2,height/2);
   // stage = 1;
    
  
    
  } else if (state==5){
    //window 4
    song1.pause();
    song1.rewind();
    song.pause();
    song.rewind();
    
    ////////////////
    movie5.play();
    image(movie5,0,0);
    
     
    
  } else if (state==6){
    //window 5
    song1.pause();
    song1.rewind();
    song5.play();
    ////////////////
    if (mouseX >=369 && mouseX <=908 && mouseY>=502 && mouseY<=720){
    image(Chess2,0,0); 
  }  else {
    image(Chess,0,0); 
    
    //background(200);
    //text("room 5", width/2, height/2);
    //text("chess room - 2 static figures sitting next to chess board", width/2, height/2+100);
    //text("click on chess board to enter chess stop motion animation", width/2, height/2+200);
   
  } 
  } else if (state==7){
    //window 6
    song1.pause();
    song1.rewind();
    song3.play();
    //background(100,30,200);
    if (mouseX >=606 && mouseX <=785 && mouseY>=34 && mouseY<=326 ) {
    image(kitchen2,0,0);
    clip1.play();
  } else {
    image(kitchen1,0,0);
    clip1.pause();
    clip1.rewind();
  }
    
    
    
    
    /*
    song6.play();
    yposa = yposa + 1;
    yposb = yposb + 1;
    image(sprinkleblack,0,0);
    image(sprinklebg,0,yposa);
    image(selfportrait1,0,0);
    image(sprinklefront,0,yposb);
    //song6.play();
    ////////////////
    if (yposa>=0){
      yposa = -2160;
    } else if (yposb>=0){
      yposb = -2160;
    }
//int yposb = -2480;
//int yposa = -2160;
    //background(225);
    //text("room 6", width/2,height/2);
    */
       
  } else if (state==8){
   frameRate(24);
   image(pics2[index2], 0, 0);
   index2 = (index2 + 1) % pics2.length;
   
 } else if (state==9){
    //window 2.1
    song1.pause();
    song1.rewind();
    movie2.stop();
    movie7.stop();
    movie3.play();
    image(movie3,0,0);
    ////////////////
/*    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  }else{
    image(office1,0,0);
}
   */
    
    
  } else if (state==10){
    //window 3.1
    song1.pause();
    song1.rewind();
    //movie5.play();
    //image(movie5,0,0);   
  } else if (state==11){
    //window 6
    song1.pause();
    song1.rewind();
    song6.play();
 
    
    yposa = yposa + 1;
    yposb = yposb + 1;
    image(sprinkleblack,0,0);
    image(sprinklebg,0,yposa);
    image(selfportrait1,0,0);
    image(sprinklefront,0,yposb);
    //song6.play();
    ////////////////
    if (yposa>=0){
      yposa = -2160;
    } else if (yposb>=0){
      yposb = -2160;
    }
//int yposb = -2480;
//int yposa = -2160;
    //background(225);
    //text("room 6", width/2,height/2);
    
       
  }  else if (state==12){

    
    song6.play();
    song.pause();
    song.rewind();
    song1.pause();
    song1.rewind();
    song2.pause();
    song2.rewind();
    song3.pause();
    song3.rewind();
    song4.pause();
    song4.rewind();
    song5.pause();
    song5.rewind();
    clip1.pause();
    clip1.rewind();
    //song6.pause();
    //song6.rewind();
    movie2.stop();
    movie3.stop();
    movie4.stop();
    movie5.stop();
    movie6.stop();
    movie7.stop();
 
    
    yposa = yposa + 1;
    yposb = yposb + 1;
    image(sprinkleblack,0,0);
    image(sprinklebg,0,yposa);
    image(selfportrait1,0,0);
    
        fill(139,0,139);
    textAlign(CENTER,CENTER);
    textSize(32);
    text("now you've been all up in my dome!",width/2, height/2+165);
    text("thanks for visiting!",width/2, height/2+210);
    text("care to look again?",width/2, height/2+255);
    textSize(24);
    
    image(sprinklefront,0,yposb);
    //song6.play();
    ////////////////
    if (yposa>=0){
      yposa = -2160;
    } else if (yposb>=0){
      yposb = -2160;
    }
    //fill(42,94,118);
/*    fill(139,0,139);
    textAlign(CENTER,CENTER);
    textSize(32);
    text("now you've been all up in my dome!",width/2, height/2+165);
    text("thanks for visiting!",width/2, height/2+210);
    text("care to look again?",width/2, height/2+255);
    textSize(24); */
//int yposb = -2480;
//int yposa = -2160;
    //background(225);
    //text("room 6", width/2,height/2);
    roomend01 = 0;
    roomend02 = 0;
    roomend03 = 0;
    roomend04 = 0;
    roomend05 = 0;
    roomend06 = 0;
    
   
 }
  
  
  
  //////// e-therapist
    else if (state==101){
    ///////////////minim test
    song.play();
    song1.pause();
    song1.rewind();
    //////////////////
    if (mouseX >=690 && mouseX <=1230 && mouseY>=375 && mouseY<=718){
     image(couch,0,0); 
     ///////////////minim test
    song.play();
    song2.pause();
    //////////////////
  }  else {
     image(office0,0,0);
     //int payment = random
   
  }
    
    fill(255);
    
    
    
    textAlign(CENTER,CENTER);
    text("welcome to", 350, 240);
    text("''processing feelings''", 350, 280);
    text("electronic therapist", 350, 320);
    textSize(24);
    text("take a seat", 1100, 330);
    text("to begin", 1100, 370);


} else if (state==102){
    //thank you jun!!!!!
    ////////////////minim test
   // song.pause();
   // song2.play();
    ////////////////
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  }else{
    image(office1,0,0);
}   
    textAlign(CENTER,CENTER);
    fill(255);
    text("hi, it's nice to see you",width/2,height/2-210);
    text("how are you feeling today?",width/2, height/2-180);
    text("i'm doing pretty good",180,519);
    text("",176,549);
    text("not too hot",1087,464);
    text("",1087,494);
  } else if (state==103) {
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
    }else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  }else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  }
    else{
    image(office1,0,0);
}
    textAlign(CENTER,CENTER);
    text("that's great to hear",width/2,height/2-210);
    text("you look like you're feeling well",width/2,height/2-180);
    text("any particlar reason things are good?",width/2,height/2-150);
    text("i guess i'm",180,519);
    text("just feeling good about life",180,549);
    text("I don't know,",1087,464);
    text("i'm actually not that great",1087,494);
  } else if (state==104){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
    text("i'm sorry to hear that...",width/2,height/2-210);
    text("do you want to get some of it off your chest?", width/2,height/2-180);
    text("totally,",180,519);
    text("that would be great",180,549);
    text("i'd rather not...",1087,464);
  } else if (state==105){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
    image(office1,0,0);
}
    text("that's awesome!",width/2,height/2-180);
    text("do you want to expand upon that feeling?",width/2,height/2-150);
    text("ok",180,519);
    text("there's not much to tell",1087,464);
  } else if (state==106){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
    text("i want you to meditate on",width/2,height/2-210);
    text("how you're feeling and why",width/2,height/2-180);
    text("how does that sound?",width/2,height/2-150);
    text("sounds good",180,519);
    text("",180,549);
    text("meditating is boring",1087,494);
    text("this is bullshit",1087,524);
  } else if (state==107){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
     text("wow.",width/2,height/2-240);
     text("you can say anything you like in here",width/2,height/2-210);
     text("but i don't think that attitude is",width/2,height/2-180);
     text("going to help you",width/2,height/2-150);
     text("you're right... excuse me",180,519);
     text("fuck this ''therapy''",1087,464);
     text("i'm out of here",1087,494);
  } else if (state==108){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
     text("sometimes it's ok to just",width/2,height/2-210);
     text("let things be",width/2,height/2-180);
     text("how about a meditation",width/2,height/2-150);
     text("ok",180,519);
     text("that sounds nice",180,549);
     text("i don't know",1087,464);
     text("my thoughts are getting",1087,494);
     text("dark",1087,524);
  } else if (state==109){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
    image(office1,0,0);
}
     text("you're only going to get out of this",width/2,height/2-180);
     text("what you put in. thats how therapy works",width/2,height/2-150);
     text("you're right...",180,519);
     text("how foolish of me",180,549);
     text("i think i'll stick to",1087,464);
     text("whiskey and cigars",1087,494);
     text("thank you very much",1087,524);
  }  else if (state==110){
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
    image(office1,0,0);
}
     text("it seems like you're under a lot of stress",width/2,height/2-180);
     text("it might help to take a moment and breathe",width/2,height/2-150);
     text("",width/2,height/2-150);
     text("ok, i'll give it a try",180,519);
     text("are you saying i look stressed?",1087,464);
     text("thanks buddy...",1087,494);
  }  else if (state==111){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
     text("being hostile and reactionary",width/2,height/2-210);
     text("is not going to help you become the person",width/2,height/2-180);
     text("you want to be",width/2,height/2-150);
     text("wow, i'm sorry",180,519);
     text("it's just my temper...",180,549);
     text("don't act like you know me",1087,464);
     text("",1087,494);
  }  else if (state==112){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i think thats enough",width/2,height/2-210);
     text("you're obviously beyond help",width/2,height/2-180);
     text("its time for you to leave",width/2,height/2-150);
     text("are you serious?",180,519);
     text("i thought you",180,549);
     text("were a professional",180,579);
     text("fuck this. fuck you.",1087,464);
     text("i'm out",1087,494);
  }  else if (state==113){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i want you to close your eyes",width/2,height/2-210);
     text("think about the sound of the ocean or the forest",width/2,height/2-180);
     text("and drop in to your inner self",width/2,height/2-150);
     text("ok",180,519);
     text("",180,549);
     text("i don't want to close my eyes",1087,464);
     text("",1087,494);
  }  else if (state==114){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("close your eyes again",width/2,height/2-210);
     text("and relax your tongue",width/2,height/2-180);
     text("let yourself meditate for at least one minute",width/2,height/2-150);
     text("wow",180,519);
     text("i feel more relaxed",180,549);
     text("yeah...",1087,464);
     text("thats not my cup of tea",1087,494);
     text("that whiskey on the other hand...",1087,524);
  }   else if (state==115){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("alcohol, tobacco and drugs",width/2,height/2-210);
     text("are not roads to self actualization",width/2,height/2-180);
     text("they are distractions from your true self",width/2,height/2-150);
     text("you're right",180,519);
     text("but life is so hard",180,549);
     text("who are you to judge?",1087,464);
     text("get off my back",1087,494);
     text("",1087,524);
  }  else if (state==116){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("lets try again another time",width/2,height/2-210);
     text("this isn't working for either of us right now",width/2,height/2-180);
     text("i hope you find peace within yourself until then",width/2,height/2-150);
     text("Ok",180,519);
     text("thanks anyway",180,549);
     text("this is useless",1087,464);
     text("ive got better ways to spend",1087,494);
     text("my time and money",1087,524);
  }  else if (state==117){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i'm glad to hear that",width/2,height/2-210);
     text("sometimes all we need is a moment",width/2,height/2-180);
     text("it sounds like you feel a little better than when you started",width/2,height/2-150);
     text("i do",180,519);
     text("thanks, i'll be back soon",180,549);
     text("it helped to slow down for a minute",1087,464);
     text("but it's nothing i couldn't",1087,494);
     text("do on my own",1087,524);
  }  else if (state==118){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("please leave and don't come back",width/2,height/2-210);
     text("your negativity is contagious",width/2,height/2-180);
     text("and i do not want to be infected",width/2,height/2-150);
     text("i'm sorry",180,519);
     text("i'll try to learn from this",180,549);
     text("good riddance",1087,464);
     text("darkness is a part of life",1087,494);
     text("one day you'll learn that",1087,524);
  }  else if (state==119){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("it's ok, i understand",width/2,height/2-210);
     text("we all get a little verklempt sometimes",width/2,height/2-180);
     text("i can suggest something to do at home to help relax",width/2,height/2-150);
     text("please",180,519);
     text("i could use it",180,549);
     text("are you saying",1087,464);
     text("i looked stressed again?",1087,494);
     text("youve got some nerve",1087,524);
  }  else if (state==120){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("go home and run yourself a hot bubblebath",width/2,height/2-210);
     text("take a long soak and have some tea",width/2,height/2-180);
     text("get a good nights sleep and see how you feel in the morning",width/2,height/2-150);
     text("wow, that sounds perfect",180,489);
     text("i'm going home to do that now",180,519);
     text("thanks doc",180,549);
     text("i'm not a fan of bubbles",1087,464);
     text("nor baths",1087,494);
     text("i'll just take a xanax",1087,524);
  }  else if (state==121){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("its your life",width/2,height/2-210);
     text("come back if you need support in the future",width/2,height/2-180);
     text("good luck",width/2,height/2-150);
     text("alright",180,519);
     text("take it easy",180,549);
     text("",1087,464);
     text("good luck to you too",1087,494);
     text("i hope you get a real job someday",1087,524);
  }  else if (state==122){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("life can be very challenging",width/2,height/2-210);
     text("but it can also be fun and easy",width/2,height/2-180);
     text("if you stay positive anything is possible",width/2,height/2-150);
     text("yeah",180,519);
     text("i needed to hear that",180,549);
     text("i've got a little song for you",1087,464);
     text("''life is short, life is shit,",1087,494);
     text("and soon it will be over!''",1087,524);
  }  else if (state==123){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("ok, thats enough",width/2,height/2-210);
     text("we're going to end this session",width/2,height/2-180);
     text("and you can take your toxic negativity with you",width/2,height/2-150);
     text("you're right",180,489);
     text("i'll try to tone it down",180,519);
     text("in the future. thanks",180,549);
     text("i will indeed",1087,464);
     text("i love my negativity",1087,494);
     text("thank you very much!",1087,524);
  }  else if (state==124){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("good, sounds like",width/2,height/2-210);
     text("you've gotten something out of this session",width/2,height/2-180);
     text("have a nice day and see you next time",width/2,height/2-150);
     text("alright, sounds good",180,519);
     text("thanks again",180,549);
     text("",180,579);
     text("i could have read that",1087,464);
     text("on a popsicle stick",1087,494);
     text("i'm not into therapy",1087,524);
  }  else if (state==125){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("it's ok, sometimes things are hard",width/2,height/2-210);
     text("and it amplifies our feelings",width/2,height/2-180);
     text("can you calm down a bit?",width/2,height/2-150);
     text("yeah",180,519);
     text("i think i can",180,549);
     text("",180,579);
     text("god",1087,464);
     text("this is so lame",1087,494);
     text("i'm over it",1087,524);
  }  else if (state==126){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("oh? you seemed fine a second ago",width/2,height/2-210);
     text("well whats going on?",width/2,height/2-180);
     text("want to talk about it?",width/2,height/2-150);
     text("maybe, i don't know",180,519);
     text("that theres much to say",180,549);
     text("",180,579);
     text("not really",1087,464);
     text("i'm feeling kind of shut off",1087,494);
     text("from the world",1087,524);
  }  else if (state==127){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i understand",width/2,height/2-210);
     text("i think we all feel like that sometimes",width/2,height/2-180);
     text("why not think about something else to clear your head?",width/2,height/2-150);
     text("ok",180,489);
     text("thats a proactive",180,519);
     text("and good idea",180,549);
     text("i don't want to feel better",1087,464);
     text("this is who i am",1087,494);
     text("sometimes i go to dark places",1087,524);
  }  else if (state==128){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("we all go to dark places sometimes",width/2,height/2-210);
     text("its being willing to come out of it",width/2,height/2-180);
     text("that gives us agency in our emotions",width/2,height/2-150);
     text("you know",180,489);
     text("you're right",180,519);
     text("it's about time i took control",180,549);
     text("agency in our emotions?",1087,464);
     text("i don't have any say in how i feel",1087,494);
     text("if i did i wouldn't feel like this",1087,524);
  }  else if (state==129){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("you've kind of worked your way",width/2,height/2-210);
     text("into a vicious cycle",width/2,height/2-180);
     text("with that thinking, do you see?",width/2,height/2-150);
     text("oh my god",180,489);
     text("you're right",180,519);
     text("i've got to snap out of it",180,549);
     text("don't tell me how i feel",1087,464);
     text("or how i think",1087,494);
     text("i don't need this",1087,524);
  }  else if (state==130){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("ok, maybe we should call it a day",width/2,height/2-210);
     text("i don't think we're going to make much headway like this",width/2,height/2-180);
     text("why don't we try again soon, ok?",width/2,height/2-150);
     text("ok, that sounds good",180,489);
     text("i've just got a lot on my plate",180,519);
     text("we'll get somewhere next time",180,549);
     text("yeah, i guess so",1087,464);
     text("i'm not sure about all this hogwash",1087,494);
     text("but i guess i'll try again later",1087,524);
  }  else if (state==131){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("you don't need to do the exercise",width/2,height/2-210);
     text("but what you get out of this is up to you",width/2,height/2-180);
     text("give it another shot?",width/2,height/2-150);
     text("ok, that sounds good",180,489);
     text("lets get started",180,519);
     text("",180,549);
     text("you know,",1087,464);
     text("i'm not into all this malarkey",1087,494);
     text("what kind of charlatan are you?",1087,524);
  }  else if (state==132){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("sometimes it's ok to just",width/2,height/2-210);
     text("let things be",width/2,height/2-180);
     text("how about a meditation",width/2,height/2-150);
     text("ok",180,519);
     text("that sounds nice",180,549);
     text("i don't know",1087,464);
     text("my thoughts are getting",1087,494);
     text("dark",1087,524);
  }  else if (state==133){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("sometimes it's ok to just",width/2,height/2-210);
     text("let things be",width/2,height/2-180);
     text("how about a meditation?",width/2,height/2-150);
     text("ok, that sounds good",180,519);
     text("lets get started",180,549);
     text("",180,549);
     text("i don't know",1087,464);
     text("i'm not feeling great",1087,494);
     text("about this therapy stuff",1087,524);
  }  else if (state==134){
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("just take a moment",width/2,height/2-210);
     text("and focus on your breathing",width/2,height/2-180);
     text("come back once you've taken 10 deep slow breaths",width/2,height/2-150);
     text("phew",180,489);
     text("that was really calming",180,519);
     text("i'm ready to go forward",180,549);
     text("i'd rather hold my breathe",1087,464);
     text("than focus on",1087,494);
     text("breathing slowly",1087,524);
  }  else if (state==136){
     if (mouseX >=484 && mouseX <= 791 && mouseY>= 85 && mouseY <= 542){
     image(hit3,0,0);   
  }  else{
     image(hit2,0,0);
}
     text("Things get tough but",width/2,height/2+220);
     text("hang in there!",width/2,height/2+260);
     text("lets see if we can get a fresh start",width/2,height/2+300);
  }else if (state==135){
     if (mouseX >=309 && mouseX <= 422 && mouseY>= 0 && mouseY <= 113){
     image(knob,0,0); 
  }  else {
     image(check,0,0);
  }
     text("thanks for coming in",width/2,height/2-230);
     text("please make sure to pay your bill before you leave",width/2,height/2-190);
     text("todays bill is",width/2,height/2-150);
     text("",180,549);
     text(s+Float.toString(bill),975,407);
     text("",1087,494);
     text("",1087,524);
  } else if ( roomend01 >= 1 && roomend02 >= 1 && roomend03 >= 1 && roomend04 >= 1 && roomend05 >= 1 && roomend06 >= 1){
   state = 12;  
  }
}
    

void mousePressed() {
  if (state <=1 && mouseX >=220 && mouseX <=352 && mouseY>=68 && mouseY<=329) {
    state = 2;
  } else if (state <=1 && mouseX >=563 && mouseX <=695 && mouseY>=68 && mouseY<=321) {
    state = 3;
  } else if (state <=1 && mouseX >=939 && mouseX <=1069 && mouseY>=71 && mouseY<=318) {
    state = 101;
  } else if (state <=1 && mouseX >=225 && mouseX <=349 && mouseY>=417 && mouseY<=660) {
    state = 5;
  } else if (state <=1 && mouseX >=569 && mouseX <=693 && mouseY>=420 && mouseY<=669) {
    state = 6;
  } else if (state <=1 && mouseX >=947 && mouseX <=1073 && mouseY>=416 && mouseY<=663) {
    state = 7;
  } else if (state ==2 && mouseX >=582 && mouseX <=841 && mouseY>=112 && mouseY<=720 ) {
    state = 1;
    roomend01 = 1;
  } else if (state ==3 && mouseX >=516 && mouseX <=683 && mouseY>=270 && mouseY<=398 ) {
    state = 9;
  } else if (state ==4 && mouseX >=540 && mouseX <=740 && mouseY>=570 && mouseY<=670 ) {
    state = 9;
  } else if (state ==5 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=720 ) {
    state = 1;
    roomend04 = 1;
  } else if (state ==6 && mouseX >=369 && mouseX <=908 && mouseY>=502 && mouseY<=720 ) {
    state = 8;
    //roomend06 = 1;
    
  } else if (state ==7 && mouseX >=606 && mouseX <=785 && mouseY>=34 && mouseY<=326 ) {
    state = 1;
    roomend06 = 1;
  } else if (state ==9 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=720 ) {
    state = 1;
    roomend02 = 1;
  } else if (state ==8 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=720 ) {
    state = 1;
    roomend05 = 1;
  } else if (state ==10 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=720 ) {
    state = 1;
  } else if (state ==11 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=720 ) {
    state = 1;
  }  else if (state ==12 && mouseX >=0 && mouseX <=1280 && mouseY>=0 && mouseY<=720 ) {
    state = 1;
  }
    else if (state ==101 && mouseX >=690 && mouseX <=1230 && mouseY>=375 && mouseY<=718) {
    state = 102;
  } else if (state ==102 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    state = 103;
  } else if (state ==102 && mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619) {
    state = 104;
  } else if (state ==103 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    state = 105;
  } else if (state ==105 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    state = 106;
  } else if (state ==106 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 107;
  } else if (state ==104 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 109;
  } else if (state ==104 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    state = 110;
  } else if (state ==109 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    state = 110;
  } else if (state ==110 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 111;
  } else if (state ==111 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 112;
  } else if (state ==110 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 113;
  } /* else if (state ==113 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 114;
  } */
    else if (state ==113 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 5;
  }
    else if (state ==114 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 115;
  } else if (state ==109 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 115;
  }  else if (state ==115 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 111;
  } else if (state ==106 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 113;
  } else if (state ==112 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 116;
  } else if (state ==114 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 117;
  } else if (state ==107 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 118;
  } else if (state ==111 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 119;
  } else if (state ==119 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 120;
  } else if (state ==120 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 121;
  } else if (state ==119 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 116;
  } else if (state ==115 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 122;
  } else if (state ==122 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 123;
  } else if (state ==122 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 124;
  } else if (state ==107 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 125;
  } else if (state ==103 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 126;
  } else if (state ==126 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 127;
  } else if (state ==127 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 128;
  } else if (state ==128 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 129;
  } else if (state ==129 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 130;
  } else if (state ==125 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 121;
  } else if (state ==125 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 130;
  } else if (state ==113 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 131;
  } else if (state ==131 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 114;
  } else if (state ==131 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 111;
  } else if (state ==105 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 133;
  } else if (state ==126 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 133;
  } else if (state ==133 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 113;
  } else if (state ==133 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 109;
  } else if (state ==105 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 133;
  } else if (state ==127 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 134;
  } else if (state ==128 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 134;
  } else if (state ==129 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 134;
  } else if (state ==134 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 130;
  } else if (state ==134 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 122;
  } else if (state ==117 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==117 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==124 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==124 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==122 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==120 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==121 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==121 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==112 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==116 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==116 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==130 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==130 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==123 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==123 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state ==118 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    state = 135;
  } else if (state ==118 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    state = 135;
  } else if (state >=102 && stage <=34 && mouseX >=48 && mouseX <= 215 && mouseY>= 10 && mouseY <= 258) {
    state = 136;
  }else if (state ==136 && mouseX >=484 && mouseX <= 791 && mouseY>= 85 && mouseY <= 542) {
    state = 102;
  }else if (state ==135 && mouseX >=309 && mouseX <= 422 && mouseY>= 0 && mouseY <= 113) {
    //thanks jun!!!
    state = 1;bill = int(random(1,300));
    roomend03 = 1;
  } else if (state ==135 && mouseX >=743 && mouseX <= 1089 && mouseY>= 470 && mouseY <= 573){
    
  }
}