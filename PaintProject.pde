PImage lebron;
PImage lebronBody;

boolean lebronOn;
boolean lebronBodyOn;

color red = #C61E12;
color pink = #FFC0CB;
color yellow = #FFF600;
color orange = #FF7500;
color green = #4caf50;
color lightBlue = #63e5ff;
color blue = #0437F2;
color purple = #b042ff;
color gray = #808080;
color black = #232323;
color white = #FFFFFF;
color canvas = #F5F5F5;
color selectedColor;

float sliderY;
float thickness;
float lebronThickness;

void setup() {
  size(1000, 800);
  background(245);
  stroke(black);
  selectedColor = canvas;
  sliderY = 660;
  thickness = 12;
  lebron = loadImage("lebronjames.png");
  lebronBody = loadImage("lebronjamesfullbody.png");
  lebronOn = false;
  lebronThickness = thickness * 5;
}
void draw() {
  // BUTTONS
  fill(153);
  rect(0, 560, 1000, 240);

  circleButton(50, 690, 30, red);
  circleButton(50, 760, 30, pink);
  circleButton(120, 690, 30, yellow);
  circleButton(120, 760, 30, orange);
  circleButton(190, 690, 30, green);
  circleButton(190, 760, 30, lightBlue);
  circleButton(260, 690, 30, blue);
  circleButton(260, 760, 30, purple);
  circleButton(330, 690, 30, white);
  circleButton(330, 760, 30, black);

  stroke(black);
  strokeWeight(3);

  // INDICA TOIR
  stroke(selectedColor);
  strokeWeight(thickness);
  line(150, 620, 400, 620);
  stroke(black);

  //SLIDER
  strokeWeight(8);
  line(460, 660, 460, 780);
  fill(red);
  strokeWeight(2);
  sliderTactile(460, 20);
  circle(460, sliderY, 20);
  strokeWeight(2);
  stroke(black);

  // STAMP BUTTON
  if (lebronOn == true) {
    fill(red);
  }
  rectButton(500, 620, 150, 120, true);
  stroke(black);
  strokeWeight(2);
  
  // NEW BUTTON
  rectButton(725,600,200,35,false);
  stroke(black);
  strokeWeight(2);
}
void mouseReleased() {
  if (dist(50, 690, mouseX, mouseY) < 30) {
    selectedColor = red;
    lebronOn = false;
  }
  if (dist(50, 760, mouseX, mouseY) < 30) {
    selectedColor = pink;
    lebronOn = false;
  }
  if (dist(120, 690, mouseX, mouseY) < 30) {
    selectedColor = yellow;
    lebronOn = false;
  }
  if (dist(120, 760, mouseX, mouseY) < 30) {
    selectedColor = orange;
    lebronOn = false;
  }
  if (dist(190, 690, mouseX, mouseY) < 30) {
    selectedColor = green;
    lebronOn = false;
  }
  if (dist(190, 760, mouseX, mouseY) < 30) {
    selectedColor = lightBlue;
    lebronOn = false;
  }
  if (dist(260, 690, mouseX, mouseY) < 30) {
    selectedColor = blue;
    lebronOn = false;
  }
  if (dist(260, 760, mouseX, mouseY) < 30) {
    selectedColor = purple;
    lebronOn = false;
  }
  if (dist(330, 690, mouseX, mouseY) < 30) {
    selectedColor = white;
    lebronOn = false;
  }
  if (dist(330, 760, mouseX, mouseY) < 30) {
    selectedColor = black;
    lebronOn = false;
  }
  if (mouseX > 500 && mouseX < 650 && mouseY > 620 && mouseY < 740) {
    lebronOn = true;
  }
  controlSlider();
}
void circleButton(int x, int y, int r, color c) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
    strokeWeight(2);
  } else {
    stroke(black);
    strokeWeight(1);
  }
  fill(c);
  circle(x, y, r * 2);
}

void rectButton(int x, int y, int w, int h, boolean imageReq) { // CHANGE THIS THIS IS NOT COMPLETE
  noFill();
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y+h) {
    stroke(white);
    strokeWeight(3);
  } else {
    stroke(black);
    strokeWeight(2);
  }
  strokeWeight(1);
  rect(x, y, w, h);
  if (imageReq == true){
  image(lebron, x, y, w, h);
  }
}
void mouseDragged() {
  controlSlider();
  if (lebronOn == true && mouseY < 560) {
    // draw lebron
    image(lebron, mouseX - (thickness * 3 )/ 2, mouseY - (thickness * 3 )/ 2, thickness * 3, thickness * 2);
    stroke(black);
    strokeWeight(2);
  } else {
    if (mouseY < 560) {
      stroke(selectedColor);
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
      stroke(black);
      strokeWeight(2);
    }
  }
}
void mousePressed() {
  if (mouseY < 560 && lebronOn == false) {
    stroke(selectedColor);
    strokeWeight(thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
    stroke(black);
    strokeWeight(2);
  }
  if (lebronOn == true && mouseY < 560) {
    image(lebron, mouseX - (thickness * 3 )/ 2, mouseY - (thickness * 3 )/ 2, thickness * 3, thickness * 2);
  }
}
void controlSlider() {
  if (mouseY > 660 && mouseY < 780 && mouseX > 450 && mouseX < 470) {
    sliderY = mouseY;
  }
  thickness = map(sliderY, 660, 780, 12, 40);
}
void sliderTactile(int x, int r) {
  if (dist(x, sliderY, mouseX, mouseY) < r - 10) {
    stroke(white);
    strokeWeight(2);
  } else {
    stroke(black);
    strokeWeight(1);
  }
}
