//lav et rum //<>// //<>// //<>//
Room[] house = new Room [6];


void setup() {
  size(800, 800);
  background(205);
  house[0]= new Room("bedRoom", false, 100, 300);
  house[1]= new Room("shitRoom", false, 100, 425);
  house[2]= new Room("sexDungeon", false, 200, 300);
  house[3]= new Room("livingRoom", false, 200, 425);
  house[4]= new Room("bathRoom", false, 300, 300);
  house[5]= new Room("womenRoom", false, 300, 425);
}

void draw() {
  house[0].drawRoof();
  // tegn rum
  for (int i=0; i < 6; i++) {
    house[i].drawRoom();
  }
  println(checklight ());
}


void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);
  for (int i = 0; i<6; i++) {
    // find ud af om vi tænder eller slukker lyset
    if (house[i].isRoomClicked(mouseX, mouseY))
      house[i].taendSluk();
    if (mouseX>145 && mouseX<80 && mouseY>250 && mouseY<35) {
      for (int j = 0; j<6; j++) {
        house[j].setLight(false);
      }
    }
  }
}



String checklight() {
  String Lys1 = "SLUK LYSET";
  String Lys2= "RO I SINDET";
  for (int i = 0; i<6; i++) {


    if (house[i].isLightOn() == true) {
      return (Lys1);
    }
  }
  return (Lys2);
}
