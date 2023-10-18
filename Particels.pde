class Particle {
  float posx, posy;
  float rotation;
  PImage img;
  int imgNum;
  float side;
  float speed;
  float active;
  
  Particle(){}
  
  
  void update(){
    if(active > 0){
      speed += 0.5;
      rotation += 15;
      if(side < 1){
        posx += 5; 
      }
      if(side > 2){
        posx -= 5;
      }
      posy += speed;
      active--;
    }
  }
  
  void summon(int num, int startposx, int startposy){ 
    posx = startposx;
    posy = startposy;
    imgNum = num;
    side = random(0, 3);
    speed = -9;
    active = 100;
    rotation = 0;
  }
  
  void render(){
   // print(imgNum);
   // println("jn");
    if(active > 0){
      fill(0);
      rect(0, 0, 50, 50);
      //println("jjjj");
      imageMode(CENTER);
      pushMatrix();
      translate(posx, posy);
      rotate(radians(rotation));
      if(imgNum == 1) {  
        image(tex1, 0, 0);
      }
      if(imgNum == 2) {  
        image(tex2, 0, 0);
      }
      if(imgNum == 3) {  
        image(tex3, 0, 0);
      }
      if(imgNum == 4) {  
        image(tex4, 0, 0);
      }
      if(imgNum == 5) {  
        image(tex5, 0, 0);
      }
      if(imgNum == 6) {  
        image(tex6, 0, 0);
      }
      if(imgNum == 7) {  
        image(tex7, 0, 0);
      }
      popMatrix();
    }
  }
}
