color lightestBlue = #e2f4f8;
color lightBlue = #bfe6ed;
color mediumBlue = #75cede;
color darkBlue = #0cadd7;
color darkestBlue = #2b51a4;
color white = #FFFFFF;
color selectedColor;

void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(darkestBlue);
  selectedColor = #FFFFFF;
}
void draw() {
  background(lightestBlue);

  //buttons
  tactile(100,700,50);
  fill(lightBlue);
  circle(100, 700, 100);

  tactile(400,700,50);
  fill(mediumBlue);
  circle(400, 700, 100);

  tactile(700,700,50);
  fill(darkBlue);
  circle(700, 700, 100);

  stroke(darkestBlue);
  //box
  fill(selectedColor);
  square(150, 100, 500);
}

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(darkestBlue);
  }
}

void mouseReleased() {
  if (dist(100, 700, mouseX, mouseY) < 50) {
    selectedColor = lightBlue;
  }
  if (dist(400, 700, mouseX, mouseY) < 50) {
    selectedColor = mediumBlue;
  }
  if (dist(700, 700, mouseX, mouseY) < 50) {
    selectedColor = darkBlue;
  }
}
