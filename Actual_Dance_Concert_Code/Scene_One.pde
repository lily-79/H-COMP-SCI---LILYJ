class One extends Scene {

  void display() {
  }

  void keyPressed() {
    
    //mirroring images
    if (key=='1') {
      PImage YES = depthImg.copy();
      ChangeS(YES);
      image(YES, 0, 500);
    }else if(key=='2'){
      PImage YES = depthImg.copy();
      background(0);
     ChangeS(YES);
      image(YES, 500,500);
      image(YES, 0,500);
    }
  }
}
