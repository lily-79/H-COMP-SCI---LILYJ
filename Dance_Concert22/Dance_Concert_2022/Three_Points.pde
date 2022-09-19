
void show() {
  PImage sharkog = shark.copy();
  PImage sharkch = shark.copy();
  ChangeS(sharkch);
  Change(sharkog);

  if (key== 'a' ) {
    image(sharkch, width/8, height/2);
    image(sharkog, width/4, height/2);
    image(sharkch, width/1.25, height/2);
  } else {
    image(sharkog, width/8, height/2);
    image(sharkog, width/4, height/2);
    image(sharkog, width/1.25, height/2);
  }
}
