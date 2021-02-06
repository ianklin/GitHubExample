Square[] sqArray = new Square[10];
void setup() {
  size(800,800);
  for (int i = 0; i < 10; i++) {
    sqArray[i] = new Square(random(0,800), random(0,800));
  }
}
void draw() {
  background(0);
  for (int i = 0; i < 10; i++) {
    sqArray[i].update();
  }
}
