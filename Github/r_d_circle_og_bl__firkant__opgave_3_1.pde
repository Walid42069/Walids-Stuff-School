void setup () {
  fullScreen();
}

void draw () {
  cirkel (width/2, height/2, 350, 255, 0, 0);
  cirkel(300, 400, 400, 0, 255, 0);
  for (int i = 0; i < 8; i++) {
    cirkel (100+200*i, 500, 50, 255, 0, 0);
  }

  firkant (200, 100, 300, 95, 0, 255);
}

void cirkel (float x, float y, int d, int r, int g, int b) {
  fill (r, g, b);
  strokeWeight (6);
  circle (x, y, d);
  fill (255);
  strokeWeight (1);
}

void firkant (float x, float y, int k, int r, int g, int b) {
  fill (r, g, b);
  square (x, y, k);
  fill (255);
}
