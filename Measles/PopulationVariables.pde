//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, smallerDimension, xCenter;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
int thack=30;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, lightred=#F55E72, black=#000000; //similar to int declaration
color backgroundColor;
Boolean nightMode =false;
//
void populationVariables () {
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter+width*1/4;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension*1/2;
  heightDiameterFace = smallerDimension*1/1.7;
  xLeftEye = xCenter-smallerDimension*1/5;
  yLeftEye = yCenter-smallerDimension*1/5;
  xRightEye = xCenter+smallerDimension*1/5;
  yRightEye = yCenter-smallerDimension*1/5;
  eyeDiameter = smallerDimension*1/6;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/5;
  xLeftNostril = xCenter-smallerDimension*1/10;
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/10;
  yRightNostril = yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  faceRadius = smallerDimension/2;
  //
}
