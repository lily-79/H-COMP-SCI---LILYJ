import org.openkinect.freenect.*;
import org.openkinect.processing.*;
import java.util.*;
Kinect kinect;
ArrayDeque<PImage> buffer = new ArrayDeque<PImage>();
PImage depthImg;
int minDepth =  200;
int maxDepth = 800;

void setup() {
  fullScreen();
  kinect = new Kinect(this);
  kinect.initDepth();
  depthImg = new PImage(kinect.width, kinect.height);
}

void Ghost(PImage x, int t){
  
}
