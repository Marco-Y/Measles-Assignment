//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
//
void setup() 
{
  //CANVAS will be added later
  size(800, 600); //Landscape
  //
  //Population
  xFace = width/2;
  yFace = height/2;
  float smallerDimension;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = width;
  heightDiameterFace = widthDiameterFace;
  //
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse(xLeftEye yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge,yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril);
  line (xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter)
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
