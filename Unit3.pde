color lightestBlue = #e2f4f8;
color lightBlue = #bfe6ed;
color mediumBlue = #75cede;
color darkBlue = #0cadd7;
color darkestBlue = #2b51a4;
color selectedColor;

void setup() {
  size(800,800);
  strokeWeight(5);
  stroke(darkestBlue);
  selectedColor = #FFFFFF;
}
void draw(){
  background(lightestBlue);
  
  //buttons
  fill(lightBlue);
  circle(100,700,100);
  
  fill(mediumBlue);
  circle(400,700,100);
  
  fill(darkBlue);
  circle(700,700,100);
  
  //box
  fill(selectedColor);
  square(150,100,500);
}

void mouseReleased() {
  if(dist(100,700,mouseX,mouseY) < 50){
    selectedColor = lightBlue;
  }
    if(dist(400,700,mouseX,mouseY) < 50){
    selectedColor = mediumBlue;
  }
    if(dist(700,700,mouseX,mouseY) < 50){
    selectedColor = darkBlue;
  }
}
