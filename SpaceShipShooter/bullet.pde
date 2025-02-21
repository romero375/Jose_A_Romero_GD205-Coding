//Made possible by Chris Whitmire Tutorials on bullets

class Bullet {

  //variables
  int x;
  int y;
  int b;
  int speed;
boolean shouldRemove;
  //constructor
  Bullet(int startingX, int startingY) {
    x = startingX;
    y = startingY;

    b = 5;
    speed = 20;
  }

  void render() {
    ellipse(x, y, b, 10);
  }

  void move() {
    y -= speed;
  }
  
  void checkRemove(){
   if(y<0){
    shouldRemove = true;
   }
  }
}
