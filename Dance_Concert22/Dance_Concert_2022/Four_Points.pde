void display() {
  PImage sharkreg = shark.copy();
  image(sharkreg, width/8, height/2);
  image(sharkreg, width/3, height/2);
  image(sharkreg, width/1.25, height/2);
  image(sharkreg, width/2, height/2);

  if (key== 'a' ) {
    tint(#FF0000);
  } 
}
