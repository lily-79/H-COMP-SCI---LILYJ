import org.openkinect.freenect.*;
import org.openkinect.processing.*;
import java.util.*;


Kinect kinect;
PImage depthImg;
int minDepth =  500;
int maxDepth = 700;


ArrayDeque<PImage> buffer = new ArrayDeque<PImage>();


void setup()
{
  size(640, 960);
  kinect = new Kinect(this);
  kinect.initDepth();
  depthImg = new PImage(kinect.width, kinect.height);
}

void updateDepthImage()
{
  int[] rawDepth = kinect.getRawDepth();

  for (int i=0; i < rawDepth.length; i++) {
    if (rawDepth[i] >= minDepth && rawDepth[i] <= maxDepth) {
      depthImg.pixels[i] = color(255);
    } else {
      depthImg.pixels[i] = color(0);
    }
  }

  // Draw the thresholded image
  depthImg.updatePixels();
}

void draw()
{
  updateDepthImage();

  PImage temp = depthImg.copy();
  buffer.addFirst(temp);

  // PImage first = buffer.getFirst(); // get*() does not remove the PImage
  // image(first, 0, 0);

  //fill(255);
  //textSize(30);
  // textAlign(CENTER);
  // text("frames: " + buffer.size(), width/2, 480);

  if (frameCount < 100)
    return;

  PImage last = buffer.removeLast();
  image(last, 0, 0);
}
