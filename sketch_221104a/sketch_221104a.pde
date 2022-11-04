//Background Image Example
//
//Global variables
int imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight, appWidth, appHeight;
//
size(1000, 800); //Landscape
//Copy Display Orientation
appWidth = width;
appHeight = height;
//
//population
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//Rectangle Layout and Image drawing to CANVAS
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
//image(pic, imageX, imageY, imageWidth, imageHeight);
