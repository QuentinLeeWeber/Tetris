boolean crit = false;
boolean down = true;
float puls = 5;
boolean pulsrichtung = true;

void checkForTod(){
  down = false;
  for(int i = 1; i < 11;i++){
    if(feld[1][i] != 0){
      down = true; 
      reset();
    }
  }
}

void critTod(){
  crit = false;
  for(int i = 1; i < 11;i++){
    if(feld[5][i] != 0){
      crit = true; 
    }
  }
  if(crit == true){
    if(pulsrichtung == true && Tick2 == true){
      puls++; 
    }
     if(pulsrichtung == false && Tick2 == true){
      puls--; 
    }
    if(puls == 1){
      pulsrichtung = true; 
    }
    if(puls == 10){
      pulsrichtung = false; 
    }
    if(puls == 1){
    image(dmg1, 0, 0);
    }
    if(puls == 2){
      image(dmg2, 0, 0);
    }
    if(puls == 3){
      image(dmg3, 0, 0);
    }
    if(puls == 4){
      image(dmg4, 0, 0);
    }
    if(puls == 5){
      image(dmg5, 0, 0);
    }
    if(puls == 6){
      image(dmg6, 0, 0);
    }
    if(puls == 7){
      image(dmg7, 0, 0);
    }
    if(puls == 8){
      image(dmg8, 0, 0);
    }
    if(puls == 9){
      image(dmg9, 0, 0);
    }
    if(puls == 10){
      image(dmg10, 0, 0);
    }
  }
}
