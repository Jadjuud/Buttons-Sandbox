// Global Variables
float buttonX, buttonY, buttondisplayWidth, buttondisplayHeight;
color buttonColour, yellow=#F8FC29, purple=#C640FC, white=#FFFFFF, reset=white;

void setup() {
  fullScreen();
  //Population
  buttonX = width*1/4;
  buttonY = height*1/3;
  buttondisplayWidth = width*1/2;
  buttondisplayHeight = height*1/3;
}//End setup()

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttondisplayWidth && mouseY <= buttonY+buttondisplayHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }//End IF Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttondisplayWidth, buttondisplayHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttondisplayWidth && mouseY <= buttonY+buttondisplayHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
