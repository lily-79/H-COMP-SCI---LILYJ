class Four extends Scene {



  void display() {
    image(depthImg, 0, 0);
    image(depthImg, width/2, 0);
    image(depthImg, 0, height/2);
    image(depthImg, width/2, height/2);
  }

  void keyPressed() {
    if (key=='a') {
      PImage YES = depthImg.copy();
      PImage NO = depthImg.copy();
      ChangeS(YES);
      Change(NO);
      image(YES, 0, 0);
      image(YES, width/2, 0);
      image(NO, 0, height/2);
      image(NO, width/2, height/2);
    }
  }
}
