class Two extends Scene {

  void setup() {
    background(0);
  }
  void display() {
    tint(#FF0000);
    image(depthImg, 500, 500);
    image(depthImg, 750, 500);
    image(depthImg, 250, 500);
    image(depthImg, 0, 500);
  }

  void keyPressed() {
    if (key=='1') {
      background(0);
    }
  }
}
