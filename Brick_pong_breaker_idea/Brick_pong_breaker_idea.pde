//player1
float p1x = 100;
float p1y = 400;
//player2
float p2x = 900;
float p2y = 400;
//ball
float posx = 500;
float posy = 500;
//background
int x = 0;
int y = 10;
int z = 20;

boolean going = true;


void setup() {
  size(1000, 1000);
}

void draw() {
  posx = posx +10;
 if (posx > 1000){
   posx = posx-10;
 }
 else if (posx < 1000){
   posx = posx + 10;
 }
 
  if (posy > 1000){
    posy = posy - 10;
  } 
  if (posy < 1000){
    posy = posy + 10;
  }
  
  background(x, y, z);
  // middle line
  stroke(255);
  line(500, 0, 500, 1000);

  //ball
  stroke(0);
  ellipse(posx, posy, 50, 50);

  //player 1
  rect(p1x, p1y, 25, 200);
  //player 2
  rect(p2x, p2y, 25, 200);


  // Player 1 controls
  if (keyPressed) {

    if (key == 'a') {
      if (p1x < width) {
        p1x = p1x - 10;
      }
    }

    if (key == 'd') {
      if (p1x <width) {
        p1x = p1x + 10;
      }
    }

    if (key == 'w') {
      if (p1y < height) {
        p1y = p1y - 10;
      }
    }

    if (key == 's') {
      if (p1y < height) {
        p1y = p1y + 10;
      }
    }
  }

  // player 2
  if (keyPressed) {
    if (key ==CODED) {
      if (keyCode == UP) {
        if  (p2y < height) {
          p2y = p2y - 10;
        }
      }
      if (keyCode == DOWN) {
        if (p2y < height) {
          p2y = p2y +10;
        }
      }
      if (keyCode == LEFT) {
        if (p2x < width) {
          p2x = p2x - 10;
        }
      }
      if (keyCode == RIGHT) {
        if (p2x < width) {
          p2x = p2x + 10;
        }
      }
    }
  }
  
}
