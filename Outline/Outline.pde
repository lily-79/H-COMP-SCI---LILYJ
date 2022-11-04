ArrayList<Scene> scenes = new ArrayList<Scene>();
Scene current;
int i;

PImage shark;

void setup() {
  noCursor();
  fullScreen();
  shark = loadImage("shark.png");
  scenes.add(new One());
}

void draw() {
  background(0);
  current = scenes.get(i);
  current.display();
  current.keyPressed();
}

void keyPressed() {
  if (key==' ') {
    i+=1;
  }
}
