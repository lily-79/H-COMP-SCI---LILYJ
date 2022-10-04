class Two extends Scene {

  void display() {
    image(depthImg, width/2, height/2);
    image(depthImg, 0, height/2);
  }

//tinting image
  void keyPressed() {
    if(key=='a'){
      tint(#FF0000);
    }
  }
}
