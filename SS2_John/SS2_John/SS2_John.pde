//square & circle o-matic!

float r;
float g;
float b;
float a;

float diam;
float x;
float y;

float st;
float stw;

float tx1;
float tx2;
float tx3;
float ty1;
float ty2;
float ty3;

float sq1;
float sq2;
float diam2;

float bg;

void setup(){
  size(1920,1080);
  background(255);
  frameRate(5);
}

void draw(){
r = random(255);
g = random(255);
b = random(255);
a = random(255);
diam = random(50);
x = random(1,25);
y = random(1,25);

tx1 = random(1,40);
tx2 = random(1,40);
tx3 = random(1,40);
ty1 = random(1,40);
ty2 = random(1,40);
ty3 = random(1,40);

sq1 = random(1,25);
sq2 = random(1,25);
diam2 = random(50);

st = random(0,50);
stw = random(0,5);


fill(r,g,b,a);
stroke(st);
strokeWeight(stw);
translate(mouseX,mouseY);

rectMode(CENTER);
rect(sq1,sq2,diam2,diam2);

triangle(tx1,ty1,tx2,ty2,tx3,ty3);
 ellipse(x,y,diam,diam);
}

void keyPressed(){
  background(r,g,b);
  frameRate(5);
}

void mousePressed(){
  frameRate(frameRate*2);
}