float quitX, quitY, quitButtonWidth, quitButtonHeight;
PImage pic1;
color green=#0EFF03, brown=#954C48, waterColor=#b9dbe1, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
int centeringButtonWidth = width*1/4;
int centeringButtonHeight = height*1/4;
void setup() {
  //CANVAS will be added later
  size(1000, 750); //Landscape
  //
  populationVariables();
  //
  color backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator similar to IF-Else
  background( backgroundColor );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
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
  rect(quitX, quitY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColor);
  //
  titleText();
  fill(lightred);
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
  line (xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension); //if zero is first, then default
  fill(lightred);
  noStroke();
  measleDiameter = random(smallerDimension* 1/random(25, 75));
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset Default
  fill(resetWhite);
  //
  //noLoop(); <- stop the loop
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  //
  if ( mouseButton == LEFT ) { //Night Mode FALSE
    backgroundColor = color( random(255), random(255), random(255) ) ;
    background( backgroundColor );
    //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    //
  }//End Left Mouse Button
  //
  if ( mouseButton == RIGHT ) { //Night Mode TRUE
    backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension);
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
   backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
   background( backgroundColour );
   ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
   */
  //
}//End mousePressed
//
//End MAIN Program
