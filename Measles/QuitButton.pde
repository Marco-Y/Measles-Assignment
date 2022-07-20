//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color green=#0EFF03, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
//
void quitButton() {
  //Population
  int QuitX = width/5;
  int QuitY = height/5;
  int ButtonWidth = width*1/8;
  int ButtonHeight = height*1/8;
  quitButtonX = QuitX - ButtonWidth;
  quitButtonY = QuitY - ButtonHeight;
  quitButtonWidth = QuitX;
  quitButtonHeight = QuitY;
  //Hover-over
  if (mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) {
  buttonFill = green;} else {
  buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColor);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
}
