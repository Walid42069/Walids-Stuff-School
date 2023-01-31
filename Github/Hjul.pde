float rad =0;
int x = 0;

void setup () {
  size (1000, 1000);
}

void draw () {
  background(245, 245, 245);
  translate(x, 0);
  pushMatrix();
  translate (200, 200);
  rotate (frameCount/12.0);
  strokeWeight (12);
  circle (0, 0, 200);
  line (0, 0, 86, 50);
  line (0, 0, -86, -51);
  line (0, 0, -50, 86);
  line (0, 0, 50, -86);
  rad++;
  popMatrix ();
  x++;
}
