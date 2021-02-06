class Square {
  float x;
  float y;
  float width;
  float height;
  float speedx = random(-5,5);
  float speedy = random(-5,5);
  int r = floor(random(0, 255));
  int b = floor(random(0, 255));
  int g = floor(random(0, 255));
  public Square(){
    x = 0;
    y = 0;
    width = 50;
    height = 50;
  }
  public Square(float x, float y){
    this.x = x;
    this.y = y;
    this.width = 50;
    this.height = 50;
  }
  public void show(){
    fill(r, g, b);
    rect(x-width/2, y-height/2, width, height);
    //fill(255, 0, 0);
    //circle(x, y, 10);
  }
  public void randomColor(){
    r = floor(random(0, 255));
    b = floor(random(0, 255));
    g = floor(random(0, 255));
  }
  public void move(){
    x += speedx;
    y += speedy;
    if(x < 0) {
      x = 0;
      speedx = -speedx;
      randomColor();
    }
    if(y < 0) {
      y = 0;
      speedy = -speedy;
      randomColor();
    }
    if(x > 800) {
      x = 800;
      speedx = -speedx;
      randomColor();
    }
    if(y > 800) {
      y = 800;
      speedy = -speedy;
      randomColor();
    }   
  }
  public void update() {
    move();
    show();
  }
}
