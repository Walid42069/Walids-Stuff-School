class Raket{

int bang;
float lunte;
color faver;
float pris;
float xpos;
float ypos;
//konstruker
Raket (int b, float l, color f, float p){
bang=b;
lunte=l;
faver=f;
pris=p;
zraketpos(400,900);
}

void zraketpos (float x, float y) {
xpos=x;
ypos=y;
} 
void tegnraket () {
  float opacity = 255 - (350 - ypos) * 15;
  stroke(30, opacity);
  fill (255,255,0, opacity);
  rect (xpos, ypos, 100, 150);
  triangle(xpos, ypos, xpos+50, ypos-125, xpos+100, ypos);
}

void moveraket(){
ypos--;
if (ypos<350);
}
}
