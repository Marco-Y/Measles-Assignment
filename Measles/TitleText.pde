//Global Variables
String title = "Measles Simulator";
float titleX, titleY, titleWidth, titleHeight, titleRadii;
PFont titleFont;
color red=#FF0022, resetDefaultInk=#FFFFFF; // not nightMode friendly
int titleSize;
//
void titleText() {
  //Population
  titleX = width*1/5;
  titleY = height*1/15;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  titleRadii = 10;
  //
  //Single Executed Code
  //Fonts rom OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  titleFont = createFont("Impact", 281); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find font in list to verify / DO NOT PRESS "OK" (BUG)
  //
  //Layout our text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight, titleRadii);
  //
  //Repeated Executed Code
  fill(red); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER ); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 50; //Change this number until it fits
  textFont(titleFont, titleSize);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}
