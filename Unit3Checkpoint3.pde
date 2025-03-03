color darkBlue = #5D69A6;
color mediumBlue = #808DCC;
color lightBlue = #AEBAF5;
color dullBlue = #B7BCD7;
color darkestBlue = #444651;
float sliderY;
float shade;

void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(lightBlue);
  fill(lightBlue);
  sliderY = 100;
  shade = 255;
}
void draw() {
  background(shade,0,0);

  line(400, 100, 400, 700);
  circle(400, sliderY, 50);
}

void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
  controlSlider();
}


void controlSlider() {
  if (mouseY > 100 && mouseY < 700 && mouseX > 375 && mouseX < 425) {
    sliderY = mouseY;
  }
  shade = map(sliderY,100,700,255,0);
}
