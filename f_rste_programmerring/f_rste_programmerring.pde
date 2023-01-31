int frame = 100;
int direction = -2;

void setup(){
  size(900,900);
}

void draw(){
  background(223);
  fill(255);
  
  push();
  translate(frame, 10);
  hoved();
  pop();  // Restore original settings
  
  if(frame < -100) {
    direction = 2;
  }
  if(frame > width - 350) {
    direction = -2;
  }
  
  frame += direction;
}
  
void hoved(){
  strokeWeight(7);
  fill(28,5,240);
  rect(100,200,250,250,30);
  fill(0);
  triangle(150, 435, 310, 380, 310, 435);
  circle(290,270,50);
  circle(160,270,50);
  fill(250,250,250);
  circle(290,270,45);
  circle(160,270,45);
  strokeWeight(5);
  fill(194,8,8);
  circle(285,270,15);
  circle(155,270,15);
  strokeWeight(3);
  fill(35,85,195);
  triangle(150, 380, 225, 320, 250, 350);
  fill(194,8,8);
  triangle(210, 435, 310, 410, 310, 435);
}  
