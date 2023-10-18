boolean lineTrue = true;
int i;
int a;
int wait;

int pointsPerBrake = 100;

void checkLine(){
  //println("gucke");
  lineTrue = true;  
  for(int i = 1; i < 19;i++){
    for(int a = 1; a < 11;a++){
      //println(lineTrue);
       if(feld[19 - i][a] == 0){
          lineTrue = false; 
       }
    }
    if(lineTrue == true){
       brakeLine(i); 
       lineTrue = true;
    } else {
      lineTrue = true; 
    }
  }
}

void brakeLine(int num){
   shortScore += pointsPerBrake;
   wait = num;
   i = 0;
   a = 0;
   for(int a = 1; a < 11;a++){
      try {
        particles[a].summon(feld[20 - 1 - num][a], a * 40,(20 - 1 - num) * 40);
      } catch (Exception e){}
   }
}

void zeilenSchwung(){
  if(wait != 0 && smallTick == true){
    i++; 
    for(int a = 1; a < 11;a++){
      try {
        if(i > wait) {
            feld[20 - i][a] = feld[20 - i - 1][a];
            print(feld[20 - 1 -i][a]);
           // particles[a].summon(1, a * 40,(20 - 1 - i) * 40);
            feld[20 - 1 -i][a] = 0;
          }
      } catch (Exception e){}
    }
    if(i == 19){
      wait = 0; 
      checkLine();
    }
  }
}
