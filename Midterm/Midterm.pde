



//used demo on state changes to inform how to construct



PFont font;
PFont font2;
int stage=1;

//processing.org - buttons
int butt1X, butt1Y;
int butt2X, butt2Y;
//int rectSize = diam1;


void setup(){
 size(1280,720);
 background(255);
 
 font = createFont("TheLightFont.ttf",26);
 textFont(font);
 
 //font = createFont("Signature of the Ancient.ttf",60);
 //textFont(font2);
 
}


void draw(){
  
  background(127);
  
  if (stage==1){
    background(255);
    //text
    fill(0);
    textAlign(CENTER,CENTER);
    text("welcome to", width/2, height/2-150);
    text("''processing feelings''", width/2, height/2-100);
    text("electronic therapist", width/2, height/2-50);
    text("press (1) to begin", width/2, height/2+100);


} else if (stage==2){
    background(127);
    textAlign(CENTER,CENTER);
    fill(255);
    text("hi, it's nice to see you",width/2,height/2-150);
    text("how are you feeling today?",width/2, height/2-100);
    text("i'm doing pretty good (2)",width/4,height/2+100);
    text("not too hot (3)",width/4*3,height/2+100);
  } else if (stage==3) {
    background(140);
    textAlign(CENTER,CENTER);
    text("that's great to hear",width/2,height/2-150);
    //textSize(30);
    text("you look like you're feeling well",width/2,height/2-100);
    text("anything special happen today?",width/2,height/2-50);
    text("something great happened! (q)",width/4,height/2+100);
    text("I don't know, just feeling good (w)",width/4*3,height/2+100);
  } else if (stage==4){
    background(110);
    text("i'm sorry to hear that...",width/2,height/2-150);
    text("can you tell me a bit about it?", width/2,height/2-100);
    text("totally, i'd love to get some stuff off my chest", width/4, height/2+100);
    text("i'd rather not...",width/4*3,height/2+100);
  }
  println(stage);
  
}

//think about adding in key where when its held down it switches to text and
//an image of therapist or something else that is judging the user really hard
//maybe a few different ones on different keys

//add animated gif or simple animation of therapist office
//movement in bubbles of drink or fireplace or waving therapist hand or something

void keyPressed(){
  if (key=='0'){
    stage=1;
  } else if (key=='1'){
    stage=2;
  } else if (key=='2'){
    stage=3;
  } else if (key=='3'){
    stage=4;
  } else if (key=='4'){
    stage=5;
  }
  
}