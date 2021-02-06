class Square {
  float x;
  float y;
  float width;
  float height;
  float speedx = random(-5,5);
  float speedy = random(-5,5);
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
    fill(23, 167, 189);
    rect(x-width/2, y-height/2, width, height);
    //fill(255, 0, 0);
    //circle(x, y, 10);
  }
  public void move(){
    x += speedx;
    y += speedy;
    if(x < 0) {
      x = 0;
      speedx = -speedx;
    }
    if(y < 0) {
      y = 0;
      speedy = -speedy;
    }
    if(x > 800) {
      x = 800;
      speedx = -speedx;
    }
    if(y > 800) {
      y = 800;
      speedy = -speedy;
    }
      
  }
}
