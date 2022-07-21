//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, smallerDimension, xCenter;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeWidth, eyeHeight;
float xLeftIris, yLeftIris, xRightIris, yRightIris, irisDiameter;
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;
float xLeftEyeLight, yLeftEyeLight, xRightEyeLight, yRightEyeLight, eyelightDiameter;
float xLeftLight, yLeftLight, xRightLight, yRightLight, lightDiameter;
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
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension*1/1.3;
  heightDiameterFace = smallerDimension*1/1.3;
  //
  xLeftEye = xCenter-smallerDimension*1/6.5;
  yLeftEye = yCenter-smallerDimension*1/6;
  xRightEye = xCenter+smallerDimension*1/6.5;
  yRightEye = yLeftEye;
  eyeWidth = smallerDimension*1/6;
  eyeHeight = smallerDimension*1/12;
  //
  xLeftIris = xCenter-smallerDimension*1/6.4;
  yLeftIris = yCenter-smallerDimension*1/6; 
  xRightIris = xCenter+smallerDimension*1/6.4;
  yRightIris = yLeftIris;
  irisDiameter = smallerDimension*1/12;
  //
  xLeftPupil = xCenter-smallerDimension*1/6.4;
  yLeftPupil = yCenter-smallerDimension*1/6;
  xRightPupil = xCenter+smallerDimension*1/6.4;
  yRightPupil = yLeftPupil;
  pupilDiameter = smallerDimension*1/25;
  //
  xLeftEyeLight = xCenter-smallerDimension*1/5.7;
  yLeftEyeLight = yCenter-smallerDimension*1/5.5;
  xRightEyeLight = xCenter+smallerDimension*1/5.7;
  yRightEyeLight = yLeftEyeLight;
  eyelightDiameter = smallerDimension*1/50;
  //
  xLeftLight = xCenter-smallerDimension*1/7;
  yLeftLight = yCenter-smallerDimension*1/6.7;
  xRightLight = xCenter+smallerDimension*1/7.3;
  yRightLight = yLeftLight;
  lightDiameter = smallerDimension*1/80;
  //
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/5;
  xLeftNostril = xCenter-smallerDimension*1/10;
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/10;
  yRightNostril = yLeftNostril;
  //
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  //
  faceRadius = smallerDimension/2;
  quitX = xCenter - smallerDimension/1.7;
  quitY = yCenter - smallerDimension/2.2;
  quitButtonWidth = smallerDimension*1/5;
  quitButtonHeight = smallerDimension*1/10;
  //
}
