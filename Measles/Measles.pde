//Boolean measleDraw=false;
//turn measle into background color if cross the circle
//
void setup()
{
  //CANVAS will be added later
  size(800, 600); //Landscape
  //
  populationVariables();
  color backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator similar to IF-Else
  background( backgroundColor );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw()
{
  titleText();
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line (xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension); //if zero is first, then default
  fill(red);
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
    rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Left Mouse Button
  //
  if ( mouseButton == RIGHT ) { //Night Mode TRUE
    backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension);
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
