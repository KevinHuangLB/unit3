color darkBlue = #5D69A6;
color mediumBlue = #808DCC;
color lightBlue = #AEBAF5;
color dullBlue = #B7BCD7;
color darkestBlue = #444651;
float sliderX;

void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(lightBlue);
  fill(lightBlue);
  sliderX = 400;
}
void draw() {
  background(0);

  line(100, 300, 700, 300);
  circle(sliderX, 300, 50);
}

void mouseReleased(){
  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325){
    sliderX = mouseX;
  }
}
