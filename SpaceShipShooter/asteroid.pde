class asteroid{
  int a;
  int s;
  float t;
  float spd;
  
  asteroid(int startingA, int startingS){
    a = startingA;
    s = startingS;
    t = random(20,100);
    spd = random(1,10);
  }
  
  void render(){
    square(a,s,t);
  }
  
  void move(){
    s -= spd;
  }
}
