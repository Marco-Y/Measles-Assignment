//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, smallerDimension, xCenter;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeWidth, eyeHeight;
float xLeftIris, yLeftIris, xRightIris, yRightIris, irisDiameter;
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;
float xLeftEyeLight, yLeftEyeLight, xRightEyeLight, yRightEyeLight, eyelightDiameter;
float xLeftLight, yLeftLight, xRightLight, yRightLight, lightDiameter;
float xLeftTears, yLeftTears, xLeftEndTears, yLeftEndTears;
float xRightTears, yRightTears, xRightEndTears, yRightEndTears;
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
  pic1= loadImage("../Images Used/Landscape & Square/brain.jpeg"); //Dimensions: width 800, height 450
  //Dimensions found by right click image / get info
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers)
  int picWidth1 = 800;
  int picHeight1 = 450;
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
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verify variables details
  //
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ELSEIF-ELSE
  //Computer chooses which formulae to execute
  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if ( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
  //Note:
  //Answers must be between 0 & 1 (decimal)
  //Ratio 1.0 similar to style="width: 100%"
  //Ratio of 0-1 similar to style="height: auto"
  //
  imageX1 = width*0;
  imageY1 = height*0;
  imageWidth1 = (width-1); //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight1 = (height-1);
  //
  picWidthAdjusted1 = imageWidth1*imageWidthRatio1;
  picHeightAdjusted1 = imageHeight1*imageHeightRatio1; //*imageHeightRatio1
  println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1); //Note: println also verifies decimal places, complier will truncate
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
  xLeftTears = xLeftEyeLight;
  yLeftTears = yCenter-smallerDimension*1/8;
  xLeftEndTears = xLeftEyeLight;
  yLeftEndTears = yCenter+smallerDimension*1/8;
  //
  xRightTears = xRightEyeLight;
  yRightTears = yCenter-smallerDimension*1/8;
  xRightEndTears = xRightEyeLight;
  yRightEndTears = yCenter+smallerDimension*1/8;
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
