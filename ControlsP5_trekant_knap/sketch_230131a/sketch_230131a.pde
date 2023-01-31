import controlP5.*;

float x1;
float x2;
float x3;
float y1;
float y2;
float y3;
void setup () {
  size (900, 900);


  cp5 = new ControlP5(this);

  myKnobA = cp5.addKnob("x1")
    .setRange(0, 255)
    .setValue(50)
    .setPosition(100, 70)
    .setRadius(50)
    .setDragDirection(Knob.VERTICAL);

  cp5 = new ControlP5(this);

  myKnobA = cp5.addKnob("x2")
    .setRange(0, 255)
    .setValue(50)
    .setPosition(200, 70)
    .setRadius(50)
    .setDragDirection(Knob.VERTICAL);

  cp5 = new ControlP5(this);

  myKnobA = cp5.addKnob("x3")
    .setRange(0, 255)
    .setValue(50)
    .setPosition(300, 70)
    .setRadius(50)
    .setDragDirection(Knob.VERTICAL);


  cp5 = new ControlP5(this);

  myKnobA = cp5.addKnob("y1")
    .setRange(0, 255)
    .setValue(50)
    .setPosition(100, 150)
    .setRadius(50)
    .setDragDirection(Knob.VERTICAL);

  cp5 = new ControlP5(this);

  myKnobA = cp5.addKnob("y2")
    .setRange(0, 255)
    .setValue(50)
    .setPosition(100, 230)
    .setRadius(50)
    .setDragDirection(Knob.VERTICAL);

  cp5 = new ControlP5(this);

  myKnobA = cp5.addKnob("y3")
    .setRange(0, 255)
    .setValue(50)
    .setPosition(100, 310)
    .setRadius(50)
    .setDragDirection(Knob.VERTICAL);
}

void draw () {
}
