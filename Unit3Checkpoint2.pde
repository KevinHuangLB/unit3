
color lightTeal = #40C0CB;
color lightestTeal = #DEFCFF;
color pearlWhite = #F9F2E7;
color lightGreen = #AEE239;
color lightPink = #FF83AF;
color selectedColor;
color white = #FFFFFF;
color black = #000000;
color grey = #676264;

void setup() {
  size(800, 800);
  strokeWeight(5);
  textSize(30);
  selectedColor = pearlWhite;
}

void draw() {
  background(white);

  stroke(lightestTeal);
  tactile(100,200,100,200);
  fill(lightTeal);
  rect(100, 100, 100, 100);
  
  tactile(100,200,350,450);
  fill(lightGreen);
  rect(100, 350, 100, 100);
  
  tactile(100,200,600,700);
  fill(lightPink);
  rect(100, 600, 100, 100);

  // box
  stroke(grey);
  fill(selectedColor);
  rect(300, 200, 350, 350);
}
void mouseReleased() {
  if (mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 200) {
    selectedColor = lightTeal;
  }
  if (mouseX > 100 && mouseX < 200 && mouseY > 350 && mouseY < 450) {
    selectedColor = lightGreen;
  }
  if (mouseX > 100 && mouseX < 200 && mouseY > 600 && mouseY < 700) {
    selectedColor = lightPink;
  }
}
void tactile(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    stroke(black);
  } else {
    stroke(lightestTeal);
  }
}
