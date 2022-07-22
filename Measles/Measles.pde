//Global Variables
color green=#00FF00, brown=#954C48, waterColor=#b9dbe1, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
PImage pic2;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float quitX, quitY, quitButtonWidth, quitButtonHeight;
float stopX, stopY, stopButtonWidth, stopButtonHeight;
float restartX, restartY, restartButtonWidth, restartButtonHeight;
float xlength;
float ylength;
int centeringButtonWidth = width*1/4;
int centeringButtonHeight = height*1/4;
int h = hour();
Boolean noLoop=false, loop=false;
Boolean nightMode=false;
Boolean widthLarger2=false, heightLarger2=false;
//
void setup() {
  //Display Geometry
  size(1000, 750); //Landscape
  //
  xCenter = width/2;
  yCenter = height/2;
  println ("width:", width, "\t height:", height, "\t displayWidth:", displayWidth, "\t\t displayHeight:", displayHeight);
  populationVariables();
  //
  //Dimensions found by right click image / get info
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers
  //
  int picWidth1 = 1000;
  int picHeight1 = 317;
  //
  if ( picWidth1 >= picHeight1 ) {
    //True if Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println("imageSmallerDimension1:", imageSmallerDimension1, "\t imageLargerDimension1:", imageLargerDimension1,
    "\t widthLarger1:", widthLarger1, " \t heightLarger1:", heightLarger1); //Verify variables details
  //
  imageX1 = xCenter-smallerDimension*1/6;
  imageY1 = yCenter+smallerDimension*1/5;
  imageWidth1 = smallerDimension*1/3; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight1 = smallerDimension*1/10;
  //
  //Image 2
  //
  int picWidth2 = 1202;
  int picHeight2 = 342;
  //
  if ( picWidth2 >= picHeight2 ) {
    //True if Landscape or Square
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger2 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println("imageSmallerDimension2:", imageSmallerDimension2, "\t imageLargerDimension2:", imageLargerDimension2,
    "\t widthLarger2:", widthLarger2, " \t heightLarger2:", heightLarger2); //Verify variables details
  //
  imageX2 = xCenter-smallerDimension*1/4;
  imageY2 = yCenter-smallerDimension*1/3.3;
  imageWidth2 = smallerDimension*1/2; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight2 = smallerDimension*1/10;
  //
  //nightMode setup
  //
  backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColor );
  //
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  println(xFace, xFace+widthDiameterFace, yFace, yFace+heightDiameterFace);
  noLoop();
  //
}//End setup
//
void draw() {
  //Hover-over
  if (mouseX> quitX && mouseX< quitX+quitButtonWidth && mouseY> quitY && mouseY< quitY+quitButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  //
  pic1= loadImage("../Images Used/kindpng_7571372.png");
  image(pic1, imageX1, imageY1, imageWidth1, imageHeight1);
  pic2= loadImage("../Images Used/pngkey.com-eye-brow-png-9873410.png");
  image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
  //
  rect(quitX, quitY, quitButtonWidth, quitButtonHeight);
  //
  if (mouseX>stopX && mouseX<stopX+smallerDimension*1/5 && mouseY>stopY && mouseY<stopY+smallerDimension*1/10) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }
  fill(buttonFill);
  rect(stopX, stopY, stopButtonWidth, stopButtonHeight);
  fill(resetButtonColor);
  //
  titleText();
  quitText();
  stopText();
  startText();
  fill(lightred);
  //
  //
  //
  ellipse(xLeftEye, yLeftEye, eyeWidth, eyeHeight);
  ellipse(xRightEye, yRightEye, eyeWidth, eyeHeight);
  fill(brown);
  //
  ellipse(xLeftIris, yLeftIris, irisDiameter, irisDiameter);
  ellipse(xRightIris, yRightIris, irisDiameter, irisDiameter);
  fill(black);
  //
  ellipse(xLeftPupil, yLeftPupil, pupilDiameter, pupilDiameter);
  ellipse(xRightPupil, yRightPupil, pupilDiameter, pupilDiameter);
  fill(resetWhite);
  //
  ellipse(xLeftEyeLight, yLeftEyeLight, eyelightDiameter, eyelightDiameter);
  ellipse(xRightEyeLight, yRightEyeLight, eyelightDiameter, eyelightDiameter);
  ellipse(xLeftLight, yLeftLight, lightDiameter, lightDiameter);
  ellipse(xRightLight, yRightLight, lightDiameter, lightDiameter);
  stroke(waterColor);
  strokeWeight(5);
  //
  line (xLeftTears, yLeftTears, xLeftEndTears, yLeftEndTears);
  line (xRightTears, yRightTears, xRightEndTears, yRightEndTears);
  fill(resetWhite);
  stroke(1);
  //
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  //
  line (xLeftMoustache, yLeftMoustache, xRightMoustache, yRightMoustache);
  strokeWeight(1);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(yCenter-faceRadius, yCenter+faceRadius); //if zero is first, then default
  //
  if (xMeasle>xCenter) {
    xlength= xMeasle-xCenter;
  } else {
    xlength=xCenter-xMeasle;
  }
  //
  if (yMeasle>yCenter) {
    ylength= yMeasle-yCenter;
  } else {
    ylength=yCenter-yMeasle;
  }
  //
  float radiusTest = sqrt(sq(xlength)+sq(ylength));
  //faceRadius
  if (faceRadius<radiusTest) {
    //fill(green);
    fill(backgroundColor);
  } else {
    fill(lightred);
  }
  //if (xMeasle<radiusTest && yMeasle<radiusTest) {
  //  fill(lightred);
  //}
  noStroke();
  measleDiameter = random(smallerDimension* 1/random(25, 75));
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset Default
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
  if (key=='q' || key=='Q') exit();
  if (key=='e' || key=='E') loop();
  if (key=='s' || key=='S') noLoop();
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  //
  if ( mouseButton == LEFT ) {
    if (mouseX> quitX && mouseX< quitX+quitButtonWidth && mouseY> quitY && mouseY< quitY+quitButtonHeight) exit();
    if (mouseX>stopX && mouseX<stopX+smallerDimension*1/5 && mouseY>stopY && mouseY<stopY+smallerDimension*1/10) noLoop();
  }
  //
  if (mouseX>0 && mouseX<width-smallerDimension*1/2 && mouseY>0 && mouseY<height) {
    if (noLoop=true) {
      loop=false;
      loop();
    } else {
      noLoop=false;
      noLoop();
    }
  }//End Left Mouse button
  //
  if ( mouseButton == RIGHT ) {
    color backgroundColor = ( nightMode==true ) ? color(random(255), random(255), 0) : color(random(255), random(255), random(255)) ; //ternary operator similar to IF-Else
    background(backgroundColor);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  //
  //Note: Mouse WHEEL is also available
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
  /* For any button
   if ( nightMode == false ) { //NightMode Switch
   nightMode = true;
   } else {
   nightMode = false;
   } //End nightMode switch
   //
   backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
   background( backgroundColor );
   ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
   */
  //
}//End mousePressed
//
//End MAIN Program
