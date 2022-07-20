//Global Variables
color green=#0EFF03, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
//
void quitButton() {
  //Population
  int QuitX = width/30;
  int QuitY = height/50;
  int ButtonWidth = width*1/6;
  int ButtonHeight = height*1/10;
  //Hover-over
  if (mouseX> QuitX && mouseX< QuitX+ButtonWidth && mouseY> QuitY && mouseY< QuitY+ButtonHeight) {
  buttonFill = green;} else {
  buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(QuitX, QuitY, ButtonWidth, ButtonHeight);
  fill(resetDefaultInk);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
}
