//Background Image Example
//
//Global variables
int appWidth, appHeight;
float BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight;
PImage pic;
Boolean nightmode=false;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;
//
void setup() 
{
 size(1000, 800); //Landscape
 //Copy Display Algorithm from Hello World
 appWidth = width;
 appHeight = height;
  //
  //Image Dimenions for Aspect Ratio
  int picWidth = 512;
  int picHeight = 512;
  //
  float smallerdimension, largerdimension;
  //Image Orientation: Lanscape, Portrait, Square
  if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
  } else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
  }
  //
  //Varifying Variable Values
  println("App Width:", appWidth, " and App Height:", appHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Image dimensions are:", picWidth, picHeight);
  println("Adjusted Image dimensions are (stretch is goal):",picWidth, picHeight);
  //
  //population
  pic = loadImage("https://imagej.nih.gov/ij/images/baboon.jpg");
  BackgroundimageX = appWidth*0;
  BackgroundimageY = appHeight*0;
  BackgroundimageWidth = appWidth-1;
  BackgroundimageHeight = appHeight-1;
  //
}//End stup
//
void draw() {
  if (nightmode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if (nightmode == true) tint(64, 64, 40); //RGB: Night Mode;
  //
}//End draw
void keyPressed() {}//End keyPressed
void mousePressed() {
 if (mouseButton == LEFT)nightMode = true;
 if (mouseButton == RIGHT)nightMode = false;
}//End mousePressed

//
//Aspect Ratio Calculations
int picWidth = 512;
int picHeight = 512;

//
picWidthAdjusted = picWidthAdjusted;
picHeightAdjusted = picHeightAdjusted;
//
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
  //
  if ( appHeight >= picHeight ) {
    //Calculated Dimension b/c smaller than width
    if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
    if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
    picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
    if (appHeight < picHeightAdjusted ) {
      println("STOP: image is too big for CANVAS");
      exit(); //stops any furthur use of APP
      //Remember: goal is
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
} else {
  //Image smaller than CANVAS, needs separate algorithm
}
//

//
//Rectangle Layout and Image drawing to CANVAS
rect(BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight);
//
//if () {} else {} for Binary Choice, no single if

//
tint(255, 128, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
//tint(64, 64, 40); //RGB: Night Mode
image(pic, BackgroundimageX, BackgroundimageY, BackgroundimageWidth, BackgroundimageHeight);
