//Project 3:
//John Wise
//Draughting Table with light circles
//move mouse to draw with lightly colored circles
//roll mouse over top left quad for small blue  circle in middle
//roll mouse over top right quad for medium small purple circle in middle
//roll mouse over bottom left quad for medium large magenta circle in middle
//roll mouse over bottom right quad for large red circle in middle
//press any key to clear
//click mouse to turn drafting grid black 
//click any button to bring drafting grid back

//Hi!


int q = 1;
int z = 1;

//notes taken from in book example
float r;
float g;
float b;
float a;

float diam;
float x;
float y;

boolean button = false;

float tr = 100;
float tb = 150;
float tg = 125;
float ta = 225; 

float trChange = 1;
float tbChange = -1;
float tgChange = -0.5;
float taChange = 0.5;

float s;

int x2 = 400;
int y2 = 400;
int w2 = 200;
int h2 = 200;

void setup(){
  size(800,800);
  background(255);
  stroke(0);
  strokeWeight(0);
}



void draw(){
  //notes taken from book example
  /*if(mouseX > x2 && mouseX< x2 + w2 && mouseY > y2 && mouseY < y2 + h2 && mousePressed) {
    button = true;
  } else {
    button = false;
  }
  
  if (button) {
    background(r,g,b,a);
    stroke(0);
  } else {
    background(255);
    stroke(1);
  }
    fill(255);
    ellipseMode(CENTER);
    ellipse(x2,y2,w2,h2);
*/
  //notes from in book example pg 79
    if (mouseX < 400 && mouseY < 400) {
    fill(75,50,225,250);
    ellipse(400,400,50,50);
  } else if (mouseX > 400 && mouseY < 400){
    fill(125,50,175,150);
    ellipse(400,400,100,100);
  } else if (mouseX < 400 && mouseY > 400) {
    fill(175,50,125,150);
    ellipse(400,400,150,150);
  } else if (mouseX > 400 && mouseY > 400) {
    fill(225,50,75,150);
    ellipse(400,400,200,200);
  }
  
  //notes taken from in class example
  for(int q =1;q<800;q=q+8){
    line(q,0,q,800);
  }
  for(int z=1; z<800;z=z+8){
    line(0,z,800,z);
  }

  r = random(150,255);
  g = random(150,255);
  b = random(150,255);
  a = random(150,255);
  s = random(5,200);
  
  diam = 10;
  
  //notes taken from in book example
  fill(r,g,b,a);
  translate(mouseX,mouseY);
  
  ellipseMode(CENTER);
  ellipse(x,y,diam,diam);
  
  //notes from book page 79
  

  
}
 /* void mousePressed(){
    if (button){
      
    }
  }
*/  
  //void keyPressed(){
    
void keyPressed(){
  background(255);
}

void mousePressed(){
  background(0);
}