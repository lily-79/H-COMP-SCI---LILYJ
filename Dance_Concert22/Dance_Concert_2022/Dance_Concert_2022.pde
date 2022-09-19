//import org.openkinect.freenect.*;
//import org.openkinect.processing.*;
//Kinect kinect;
//PImage depthImg;
PImage shark;
//int minDepth =  200;
//int maxDepth = 1025;
int gamestate = 0;

void setup() {
  noCursor();
  fullScreen();

  //kinect = new Kinect(this);
  //kinect.initDepth();

  // depthImg = new PImage(kinect.width, kinect.height);
  shark = loadImage("images.jpg");
}

void updateDepthImage()
{
  // Threshold the depth image
  //int[] rawDepth = kinect.getRawDepth();
  //for (int i=0; i < rawDepth.length; i++) {
  //  if (rawDepth[i] >= minDepth && rawDepth[i] <= maxDepth) {
  //    depthImg.pixels[i] = color(255);
  //  } else {
  //  depthImg.pixels[i] = color(0);
  //}
}

// Draw the thresholded image
//depthImg.updatePixels();
//}

void draw() {
  background(0);

  //updateDepthImage();

  // PImage YES = depthImg.copy();
  // PImage NO = depthImg.copy();

  // ChangeS(YES);
  // Change(NO);
  // imageMode(CENTER);
  // image(YES, width/4, height/4);
  //image(YES, 3*width/4, 3*height/4);
  // image(NO, width/4, 3* height/4);
  //image(NO, 3*width/4, height/4);

  fill(255);
  if (gamestate ==0) {
  } else if (gamestate ==1) {//two points
    present();
  } else if (gamestate ==2) {//three points
    show();
  } else if (gamestate ==3) {//four points
    display();
  }



  //CHANGING GAMESTATES
  if (keyPressed) {
    if (key == '1') {//Two Points
      gamestate = 1;
    } else if (key =='2') { //Three Points
      gamestate = 2;
    } else if (key =='3') { //Four Points
      gamestate = 3;
    }
  }
}
