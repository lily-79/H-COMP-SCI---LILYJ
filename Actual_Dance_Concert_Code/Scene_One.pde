class One extends Scene {
 
  void setup() {
    background(0);
  }
  
  void display() {
    background(0);
  }

  void keyPressed() {

    //mirroring images
    if (key=='1') {
      image(depthImg, 0, 500);
    } else if (key=='2') {
      background(0);
      image(depthImg, 500, 500);
      image(depthImg, 0, 500);
    }
  }
}
