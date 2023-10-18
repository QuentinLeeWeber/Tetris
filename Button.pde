class Button{
  int posx, posy;
  int sizex, sizey;
  boolean hov = false;
  boolean pressed = false;
  
  Button(int startposx, int startposy, int startsizex, int startsizey){
    sizex = startsizex;
    sizey = startsizey;
    posy = startposy;
    posx = startposx;
  }
  
  void update(){
    if(mouseX > posx && mouseX < posx + sizex && mouseY > posy && mouseY < posy + sizey){
      hov = true;
    } else {
      hov = false;
    }
    if(mouseX > posx && mouseX < posx + sizex && mouseY > posy && mouseY < posy + sizey && mousePressed == true){
      pressed = true;
    } else {
      pressed = false;
    }
  }
  
  void render(){
    fill(255, 0, 0);
    rect(posx, posy, sizex, sizey);
  }
}
