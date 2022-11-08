class Two extends Scene {

  void display() {
    tint(#FF0000);
    PImage YES = depthImg.copy();
    ChangeS(YES);
    image(YES, 500, 500);
    image(YES, 750, 500);
    image(YES, 250, 500);
    image(YES, 0, 500);
  }

  void keyPressed() {
    if(key=='1'){
      background(0);
    }
  }
}
