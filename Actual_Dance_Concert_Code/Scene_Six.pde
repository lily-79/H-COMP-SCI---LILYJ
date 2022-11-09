class Six extends Scene {
 
  void setup() {
    background(0);
  }
  
  void display() {
     updateDepthImage();
    Delay(depthImg, 500, 500, 200);
    Delay(depthImg, 750, 500, 200);
    Delay(depthImg, 250, 500, 200);
    Delay(depthImg, 0, 500, 200);
  }

  void keyPressed() {
  }
}
