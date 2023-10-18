class Figur{
  
  float posx, posy;
  float type;
  float rotation = 0;
  int[][] currentFigure = new int[20][12];
  int[][] tryFigure = new int[20][12];
  boolean checkDown = true;
  boolean checkSide = true;
  boolean checkRotate = true;
  
  Figur(){}
  
  
    
  void render(){
    for(int i = 0;i < 18;i++){
      for(int a = 0;a < 10;a++){
        imageMode(CORNER);
        if(currentFigure[i][a] == 0){
          
        }
        if(currentFigure[i][a] == 1){
          if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex1,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
        }
        }
        if(currentFigure[i][a] == 2){
           if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex2,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
        }
        }
        if(currentFigure[i][a] == 3){
           if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex3,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
        }
        }
        if(currentFigure[i][a] == 4){
          if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex4,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
        }
        }
        if(currentFigure[i][a] == 5){
          if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex5,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
        } 
        }
        if(currentFigure[i][a] == 6){
          if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex6,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
          }
        }
        if(currentFigure[i][a] == 7){
           if(currentFigure[i][a] != 0){
         // rect(1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40, 40, 40);
          image(tex7,1 * (a + posx - 5) * 40, 1 * (i + posy - 5) * 40); 
          }
        }
        noStroke();
      }
    }
  } 
  
  
  
  
  
  
  void newFigure(){
    posx = 5;
    posy = 1;
    rotation = 90;
    type = round(floor(random(1, 8.9999999999999)));
   // println(type);
   // type = 1;
    if(type == 1){
      currentFigure = Figure1H90; 
      println("1");
    }
    if(type == 2){
      currentFigure = Figure2H90; 
      println("2");
    }
    if(type == 3){
      currentFigure = Figure3H90; 
      println("3");
    }
    if(type == 4){
      currentFigure = Figure4H90; 
      println("4");
    }
    if(type == 5){
      currentFigure = Figure5H90; 
      println("5");
    }
    if(type == 6){
      currentFigure = Figure6H90; 
      println("6");
    }
    if(type == 7){
      currentFigure = Figure7H90; 
      println("7");
    }
  }
  
  void update(){
    checkDown = true;
    checkSide = true;
    checkRotate = true;
    //println(posy);
    if(Tick){
       tryDown();
    }
    if(rotation == 360){
      rotation = 0; 
    }
  }
  
  void tryDown(){
    try{
      for(int i = 0;i < 18;i++){
        for(int a = 0;a < 10;a++){
          if(currentFigure[i][a] != 0 && feld[(round(i + posy + 1 - 4))][round(a + posx - 4)] != 0 && checkDown == true){
            checkDown = false;
          } else {}
        }
      }
    } catch (Exception e){}
    if(checkDown == true){
      posy++; 
    } else {
      abdruck();
      checkLine();
      newFigure();
      shortScore += 10;
    }
  }
  
  void tryWalkSide(int num){
      try{
      for(int i = 0;i < 18;i++){
        for(int a = 0;a < 10;a++){
          if(currentFigure[i][a] != 0 && feld[(round(i + posy - 4))][round(a + posx + num - 4)] != 0 && checkSide == true){
            checkSide = false;
          } else {}
        }
      }
    } catch (Exception e){}
    if(checkSide == true){
      posx += num; 
    } else {}
  }
  
  void tryTurn(){
     try{
      for(int i = 0;i < 18;i++){
        for(int a = 0;a < 10;a++){
          if(rotation + 90 == 90){
             if(type == 1){
                tryFigure = Figure1H90;
             }
             if(type == 2){
                tryFigure = Figure2H90;
             }
             if(type == 3){
                tryFigure = Figure3H90;
             }
             if(type == 4){
                tryFigure = Figure4H90;
             }
             if(type == 5){
                tryFigure = Figure5H90;
             }
             if(type == 6){
                tryFigure = Figure6H90;
             }
             if(type == 7){
                tryFigure = Figure7H90;
             }
          }
          if(rotation + 90 == 180){
             if(type == 1){
               tryFigure = Figure1H180; 
             }
             if(type == 2){
               tryFigure = Figure2H180; 
             }
             if(type == 3){
               tryFigure = Figure3H180; 
             }
             if(type == 4){
               tryFigure = Figure4H180; 
             }
             if(type == 5){
               tryFigure = Figure5H180; 
             }
             if(type == 6){
               tryFigure = Figure6H180; 
             }
             if(type == 7){
               tryFigure = Figure7H180; 
             }
          }
          if(rotation + 90 == 270){
             if(type == 1){
               tryFigure = Figure1H270; 
             }
             if(type == 2){
               tryFigure = Figure2H270; 
             }
             if(type == 3){
               tryFigure = Figure3H270; 
             }
             if(type == 4){
               tryFigure = Figure4H270; 
             }
             if(type == 5){
               tryFigure = Figure5H270; 
             }
             if(type == 6){
               tryFigure = Figure6H270; 
             }
             if(type == 7){
               tryFigure = Figure7H270; 
             }
          }
          if(rotation + 90 == 360){
            if(type == 1){
              tryFigure = Figure1H0; 
            }
            if(type == 2){
              tryFigure = Figure2H0; 
            }
            if(type == 3){
              tryFigure = Figure3H0; 
            }
            if(type == 4){
              tryFigure = Figure4H0; 
            }
            if(type == 5){
              tryFigure = Figure5H0; 
            }
            if(type == 6){
              tryFigure = Figure6H0; 
            }
            if(type == 7){
              tryFigure = Figure7H0; 
            }
          }
        }
      }
    } catch (Exception e){}
    try{
      for(int i = 0;i < 20;i++){
        for(int a = 0;a < 12;a++){
          if(tryFigure[i][a] != 0 && feld[(round(i + posy - 4))][round(a + posx - 4)] != 0 && checkSide == true){
            checkRotate = false;
            //println("ne", counter);
            //counter++;
          } else {}
        }
      }
    } catch (Exception e){}
    if(checkRotate == true){
      currentFigure = tryFigure;
      rotation += 90;
    } else {}
  }
  
  void abdruck(){
    try{
      for(int i = 0;i < 20;i++){
        for(int a = 0;a < 12;a++){
          if(currentFigure[i][a] != 0 ){
            feld[round(i + posy - 4)][round(a - 4 + posx)] = currentFigure[round(i)][round(a)];
          } else {}
        }
      }
    } catch (Exception e){}
  }
}
