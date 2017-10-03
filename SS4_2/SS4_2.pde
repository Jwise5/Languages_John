//SS4
//John
//Aubrey Graham is Blem for Real
//move cursor to top left to make left eye appear
//move cursor to top right to make right eye appear
//move cursor to bottom left to make new jaw / beard appear
//move cursor to bottom right to make all head changes appear
//press key to flicker away from hell toward island

PImage eye1;
PImage eye2;
PImage eye3;
PImage head1;
PImage mouth1;
PImage mouth2;
PImage mouth3;
PFont font;
PImage island1;
PImage hell1;

// notes from example 8-9
float speed = 3;
int diameter = 20;
float x1;
float y1;

void setup(){
  //frameRate(5);
  size(800,800);
  eye1 = loadImage("eye1-1.png");
  eye2 = loadImage("eye2.png");
  eye3 = loadImage("eye1.png");
  head1 = loadImage("drakehead1.png");
  mouth1 = loadImage("mouth1.png");
  mouth2 = loadImage("mouth2.png");
  mouth3 = loadImage("mouth3.png");
  island1 = loadImage("island1.jpg");
  hell1 = loadImage("hell1.jpg");
  font = createFont("PermanentMarker-Regular.ttf",32);
  textFont(font);
  x1 = 0;
  y1 = 0;
}
  
void draw(){
  println(mouseX + " : " + mouseY);
  
  
  background(204);
  image(hell1,0,0,800,800);
  //image(island1,0,0,800,800);
  
  text("unruly, unruly, maddas // who keeps bringing more, I've had too many // this virginia done me off already // I'm blem for real, I might just say how i feel // I'm blem for real I might just say how I feel // Don't switch on me, I got big plans // We need to forward to the islands and get you gold, no spray tans // I need you to stop running back to your ex he's a wasteman // I wanna know how come we can never slash and stay friends // I'm blem for real I might just say how I feel // I'm blem for real I might just say how I feel // 'Cause I know what I like // I know how I wanna live my life // I don't need no advice // You're not here and we both knowh why, so // Move from me when you're extra // move from me with the passa // I'm building up a house where they raised me // You move with me I'll go crazy", 10,20,800,800);
  
  
  image(head1,0,0);
  //image(eye1,0,0);
  //image(eye3,200,215,100,100);
  //image(eye2,340,225,100,100);
  //image(mouth1,205,370,200,130);
  //image(mouth2,205,360,200,130);
  //image(mouth3,155,308,300,240);
  
  
  //notes from in book example pg 79
    if (mouseX < 400 && mouseY < 400) {
    image(eye3,200,215,100,100);
  
  } else if (mouseX > 400 && mouseY < 400){
    image(eye2,340,225,100,100);
  } else if (mouseX < 400 && mouseY > 400) {
    image(mouth3,155,308,300,240);
  } else if (mouseX > 400 && mouseY > 400) {
   
   //image(island1,0,0,800,800);
   
    
    image(eye3,200,215,100,100);
    image(eye2,340,225,100,100);
    image(mouth3,155,308,300,240);
  }
  

}
  

//notes taken from example 8-9
   //void keyPressed(){
    
void keyPressed(){
  x1 += random(-speed, speed);
  y1 += random(-speed, speed);
  image(island1,0,0,800,800);
}