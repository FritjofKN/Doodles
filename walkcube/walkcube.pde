int anim = 0;
float panim = 0;
boolean moving = false;
boolean movingUp = false;
boolean movingDown = false;
boolean movingLeft = false;
boolean movingRight = false;
float xpos = 0;
float ypos = 0;
float zanim = 0;


void setup() {
  size(400,400,P3D);
  background(255,255,0);
  stroke(255,255,0);
  fill(0);
}

void keyPressed() {
    if(keyCode==UP) {moving = true; movingUp = true;}
    if(keyCode==DOWN) {moving = true; movingDown = true;}
    if(keyCode==LEFT) {moving = true; movingLeft = true;}
    if(keyCode==RIGHT) {moving = true; movingRight = true;}
}

void draw() {
  clear();
  background(255,255,0);
    for (int i=0; i<=10; i++) {
      stroke(0,0,0,30);
      strokeWeight(1);
      line(0,i*50+25-ypos/3.5,width,i*50+25-ypos/3.5);
      line(i*50+25-xpos/3.5,0,i*50+25-xpos/3.5,height);
  }
  stroke(255,255,0);
  translate(width/2+xpos,height/2+ypos,0);
  
  if(movingUp == true) {rotateX(radians(anim)); ypos = ypos-panim/10;}
  if(movingDown == true) {rotateX(-radians(anim)); ypos = ypos+panim/10;}
  if(movingLeft == true) {rotateY(-radians(anim)); xpos = xpos-panim/10;}
  if(movingRight == true) {rotateY(radians(anim)); xpos = xpos+panim/10;}
  
  box(40);
  
  if (moving == true) {anim = anim+3; panim = panim+3;}
  if (panim >=27.75) {panim = 0;}
  if (anim >= 90) {anim = 0; moving = false; movingUp = false; movingDown = false; movingLeft = false; movingRight = false;}
}
 
