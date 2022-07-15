//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
//
void setup() 
{
  //CANVAS will be added later
  size(800, 600); //Landscape
  //
  //Population
  float xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  float smallerDimension;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4; 
  yLeftEye = yCenter-smallerDimension*1/4;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/4;
  eyeDiameter = smallerDimension*1/8;
  //xNoseBridge = ;
  //yNoseBridge = ; 
  //xLeftNostril = ;
  //yLeftNostril = ;
  //xRightNostril = ;
  //yRightNostril = ;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter-smallerDimension*1/4;
  xRightMouth = yRightEye;
  yRightMouth = yCenter+smallerDimension*1/4;
  //xMeasle = ;
  //yMeasle = ;
  //measleDiameter = ;
  //measleDiameter = ;
  //
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge,yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril);
  line (xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
