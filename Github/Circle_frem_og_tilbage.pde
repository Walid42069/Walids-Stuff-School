int lengde = 51;
int retning = 1;

//*******************************
void setup() {
  size (600, 600);
}
//*******************************

void draw () {
  background (95);
  println(retning);
  if (retning > 0) {
    lengde = lengde -1;
  } else if (retning <= 0) {
    lengde = lengde +1;
  }

  if (lengde >= width-50|| lengde <= 50) {
    retning = retning * -1;
  }

  translate (lengde, 300);
  circle(0, 0, 100);
}
