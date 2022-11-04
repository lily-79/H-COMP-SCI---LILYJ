class One extends Scene {
  void display() {
    background(0);
  }

  void keypressed() {
    if (key=='1') {
      image(shark, width/2, height/2);
    } else if (key=='2') {
      image(shark, width/2, height/2);
      image(shark, 0, height/2);
    }
  }
}
