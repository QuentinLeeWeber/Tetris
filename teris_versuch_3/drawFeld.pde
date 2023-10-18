void drawFeld(){
   for(int i = 0;i < 20;i++){
      for(int a = 0;a < 12;a++){
        imageMode(CORNER);
        if(feld[i][a] == 0){
          noStroke();
          fill(0);
          rect(1 * (a - 1) * 40, 1 * (i - 1) * 40, 40, 40);
        }
        if(feld[i][a] == 1){
          image(tex1, 1 * (a - 1) * 40, 1 * (i - 1) * 40);
        }
        if(feld[i][a] == 2){
          image(tex2, 1 * (a - 1) * 40, 1 * (i - 1) * 40);      
        }
        if(feld[i][a] == 3){
          image(tex3, 1 * (a - 1) * 40, 1 * (i - 1) * 40);  
        }
        if(feld[i][a] == 4){
          image(tex4, 1 * (a - 1) * 40, 1 * (i - 1) * 40);       
        }
        if(feld[i][a] == 5){
          image(tex5, 1 * (a - 1) * 40, 1 * (i - 1) * 40);    
        }
        if(feld[i][a] == 6){
          image(tex6, 1 * (a - 1) * 40, 1 * (i - 1) * 40);
        }
        if(feld[i][a] == 7){
          image(tex7, 1 * (a - 1) * 40, 1 * (i - 1) * 40);
        }
      }
   }
}
