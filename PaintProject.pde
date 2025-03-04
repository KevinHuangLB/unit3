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
color selectedColor;

void setup() {
  size(1000, 800);
  background(255);
  stroke(black);
  selectedColor = white;
}
void draw() {
  // BUTTONS
  fill(153);
  rect(0, 560, 1000, 240);
  
  
  // PACKAGE INTO 1 BUTTON FUNCTION
  // LOOK GOOGLE DOC
  
  
  

  tactile(50, 690, 30);
  fill(red);
  circle(50, 690, 60);

  tactile(50, 760, 30);
  fill(pink);
  circle(50, 760, 60);

  tactile(120, 690, 30);
  fill(yellow);
  circle(120, 690, 60);

  tactile(120, 760, 30);
  fill(orange);
  circle(120, 760, 60);

  tactile(190, 690, 30);
  fill(green);
  circle(190, 690, 60);

  tactile(190, 760, 30);
  fill(lightBlue);
  circle(190, 760, 60);

  tactile(260, 690, 30);
  fill(blue);
  circle(260, 690, 60);

  tactile(260, 760, 30);
  fill(purple);
  circle(260, 760, 60);

  tactile(330, 690, 30);
  fill(gray);
  circle(330, 690, 60);

  tactile(330, 760, 30);
  fill(black);
  circle(330, 760, 60);

  stroke(black);
  strokeWeight(1);

  // COLOR PANEL
  fill(selectedColor);
  rect(100, 590, 160, 50);
}
void mouseReleased() {
  if (dist(50, 690, mouseX, mouseY) < 30) {
    selectedColor = red;
  }
  if (dist(50, 760, mouseX, mouseY) < 30) {
    selectedColor = pink;
  }
  if (dist(120, 690, mouseX, mouseY) < 30) {
    selectedColor = yellow;
  }
  if (dist(120, 760, mouseX, mouseY) < 30) {
    selectedColor = orange;
  }
  if (dist(190, 690, mouseX, mouseY) < 30) {
    selectedColor = green;
  }
  if (dist(190, 760, mouseX, mouseY) < 30) {
    selectedColor = lightBlue;
  }
  if (dist(260, 690, mouseX, mouseY) < 30) {
    selectedColor = blue;
  }
  if (dist(260, 760, mouseX, mouseY) < 30) {
    selectedColor = purple;
  }
  if (dist(330, 690, mouseX, mouseY) < 30) {
    selectedColor = gray;
  }
  if (dist(330, 760, mouseX, mouseY) < 30) {
    selectedColor = black;
  }
}
void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
    strokeWeight(2);
  } else {
    stroke(black);
    strokeWeight(1);
  }
}
void mouseDragged() {
  if (mouseY < 560) {
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
    stroke(black);
  }
}
