Raket wst;




void setup () {
  fullScreen();

   wst = new Raket(25, 10, #006699, 15);
}





void draw () {
  background(30);
wst.tegnraket();
wst.moveraket();

}
