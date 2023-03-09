class Klokke {
  int cx, cy;
  float s, m, t;
  float sRadius;
  float mRadius;
  float tRadius;
  float radius;

  // konstruktør
  Klokke(int centerx, int centery, float klokkeRadius) {
    cx = centerx;
    cy = centery;
    sRadius = klokkeRadius * 0.75;
    mRadius = klokkeRadius * 0.65;
    tRadius = klokkeRadius * 0.55;
    radius = klokkeRadius;
    s = map(second(), 0, 60, 0, TWO_PI)-HALF_PI;
    m = map(minute()+norm(second(), 0, 60), 0, 60, 0, TWO_PI)-HALF_PI;
    t = map(hour()+norm(minute(), 0, 60), 0, 24, 0, TWO_PI*2)-HALF_PI;
  }

  void TegnUret() {
    s = map(second(), 0, 60, 0, TWO_PI)-HALF_PI;
    m = map(minute()+norm(second(), 0, 60), 0, 60, 0, TWO_PI)-HALF_PI;
    t = map(hour()+norm(minute(), 0, 60), 0, 24, 0, TWO_PI*2)-HALF_PI;

    stroke(14);
    fill(0, 0, 0);
    circle(cx, cy, 2 * radius);
    tegnTal();
    fill(255);
    Tegnurpil();
  }

  void tegnTal() {
    fill(255, 49, 49);



    textSize(min(radius/6, 64));
    text("III", cx + cos(0) * 1.2 * sRadius, cy + sin(0) * 1 * sRadius);
    text("IV", cx + cos(2 * PI / 12) * 1.2 * sRadius, cy + sin(2 * PI / 12) * 1.2 * sRadius);
    text("V", cx + cos(2 * 2 * PI / 12) * 1.2 * sRadius, cy + sin(2 * 2 * PI / 12) * 1.2 * sRadius);
    text("VI", cx + cos(3 * 2 * PI / 12) * 1.2 * sRadius, cy + sin(3 * 2 * PI / 12) * 1.2 * sRadius);
    text("VII", cx + cos(4 * 2 * PI / 12) * 1.2 * sRadius, cy + sin(4 * 2  * PI / 12) * 1.2 * sRadius);
    text("VIII", cx + cos(5 * 2 * PI / 12) * 1.2 * sRadius, cy + sin(5 * 2 * PI / 12) * 1.2 * sRadius);
    text("IX", cx + cos(6 * 2 * PI / 12) * 1.2 * sRadius, cy + sin(6 * 2 * PI / 12) * 1.2 * sRadius);
    text("X", cx + cos(7 * 2 * PI / 12) * 1.25 * sRadius, cy + sin(7 * 2 * PI / 12) * 1.25 * sRadius);
    text("XI", cx + cos(8 * 2 * PI / 12) * 1.25 * sRadius, cy + sin(8 * 2 * PI / 12) * 1.25 * sRadius);
    text("XII", cx + cos(9 * 2 * PI / 12) * 1.25 * sRadius, cy + sin(9 * 2 * PI / 12) * 1.25 * sRadius);
    text("I", cx + cos(10 * 2 * PI / 12) * 1.25 * sRadius, cy + sin(10 * 2 * PI / 12) * 1.25 * sRadius);
    text("II", cx + cos(11 * 2 * PI / 12) * 1.25 * sRadius, cy + sin(11 * 2 * PI / 12) * 1.25 * sRadius);
  }

  void Tegnurpil() {
    stroke(57, 255, 20);
    strokeWeight(radius/34);
    line(cx, cy, cx + cos(s) * sRadius, cy + sin(s) * sRadius);
    strokeWeight(radius/32);
    line(cx, cy, cx + cos(m) * mRadius, cy + sin(m) * mRadius);
    strokeWeight(radius/30);
    line(cx, cy, cx + cos(t) * tRadius, cy + sin(t) * tRadius);
    stroke(0);
    strokeWeight(0);
    circle(cx, cy, radius/8);
  }
}
