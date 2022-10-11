import org.openkinect.freenect.*;
import org.openkinect.processing.*;
Kinect kinect;
PImage depthImg;
int minDepth =  200;
int maxDepth = 800;

void setup(){
  fullScreen();
  kinect = new Kinect(this);
  kinect.initDepth();
  depthImg = new PImage(kinect.width, kinect.height);
}



void draw() {
   int[] rawDepth = kinect.getRawDepth();
  for (int i=0; i < rawDepth.length; i++) {
    if (rawDepth[i] >= minDepth && rawDepth[i] <= maxDepth) {
      depthImg.pixels[i] = color(255);
    } else if(frameCount> 200){
     depthImg.pixels[i] = color(0);
    }
  }

  // Draw the thresholded image
  depthImg.updatePixels();
  image(depthImg, 0,0);
}
