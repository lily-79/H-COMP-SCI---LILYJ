class Two extends Scene {

  void display() {
    image(depthImg, width/2, height/2);
    image(depthImg, 0, height/2);
  }

  //tinting image
  void keyPressed() {
    if (key=='a') {
      Delay(depthImg,0,height/2,300 );
      image(depthImg, width/2, height/2);
    }
  }
}
