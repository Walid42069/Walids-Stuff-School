Klokke klokke;

void setup() {
  fullScreen();
  textAlign(CENTER, CENTER);

  int radius = min(width, height) / 2;
  klokke = new Klokke(1800, 120, radius / 5);
}

void draw() {
  background(69);
  klokke.TegnUret();
}
