int bg = 255;
int db = 0;
int ship = 255;
float bX = 0;
float bY = 400;
float b = 0.0;
float Mx;
float My;
float easing = 0.1;
int radius = 50;
int round = 200;
int inside = round + radius;

ArrayList <asteroid>asteroidList;

ArrayList <Bullet>bulletList;

void setup() {
  size(1000, 1000);
  ellipseMode(RADIUS);
  ellipseMode(ROUND);

  asteroidList = new ArrayList<asteroid>();
  bulletList = new ArrayList<Bullet>();
}

void draw() {



  translate(0, 0);

  //Outer Mother Fuckin Space
  background(10, 10, 50);

  //asteroids
  for (asteroid aasteroid : asteroidList) {
    aasteroid.render();
    aasteroid.move();
  }

  //Force Field
  stroke(10, 10, 50);
  strokeWeight(0);
  fill(255, bg);
  ellipse(width/2, height/2, round, round);

  //Death Ball
  stroke(10, 10, 50);
  fill(db, 0, 0);
  ellipse(Mx, My, radius, radius);
  fill(255, 0, 0);
  ellipse(Mx, My, 20, 20);



  //ship
  strokeWeight(0);
  translate(500, 500);
  rotate(TAU * b);
  fill(255, ship, ship);
  triangle(-25, 400, 0, 375, 25, 400);
  ellipse(bX, bY, 5, 10);


  //Ship's Movement
  //if (keyPressed) {
  //  if (key == 'a') {
  //    b = b + 0.01;
  //  }
  //}

  //if (keyPressed) {
  //  if (key == 'd') {
  //    b = b - 0.01;
  //  }
  //}


  //Death Ball Movement
  if (abs(mouseX - Mx) > 0.1) {
    Mx = Mx +(mouseX - Mx) * easing;
  }
  if (abs(mouseY - My) > 0.1) {
    My = My +(mouseY - My) * easing;
  }

  Mx = constrain(Mx, 400, width-inside-150);
  My = constrain(My, 400, height-inside-150);


  println(bulletList.size());

  for (Bullet aBullet : bulletList) {
    aBullet.render();
    aBullet.move();
    aBullet.checkRemove();
  }
  for (int i = bulletList.size()-1; i >= 0; i -= 1) {

    Bullet aBullet =  bulletList.get(i);

    if (aBullet.shouldRemove == true) {
      bulletList.remove(aBullet);
      bg -= 5;
    }
    if (bg <= 0){
     db += 10; 
    }
  }
  
  
}

void keyPressed() {

  if (key == 'a') {
    b = b + 0.01;
  }

  if (key == 'd') {
    b = b - 0.01;
  }

  if (key == ' ') {
    bulletList.add(new Bullet(0, 400) );
  }
}

void mousePressed() {
  //asteroid summoning
  asteroidList.add(new asteroid(mouseX, height));
}
