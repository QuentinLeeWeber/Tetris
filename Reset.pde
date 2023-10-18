void reset(){
   //feld = idealFeld;
   if(score > highscore){
     highscore = score; 
   }
   for(int i = 0;i < 20;i++){
     for(int a = 0;a < 12;a++){
       feld[i][a] = 0;
     }
   }
   for(int a = 0;a < 12;a++){
     feld[19][a] = 1; 
   }
   for(int a = 0;a < 20;a++){
     feld[a][0] = 1; 
   }
   for(int a = 0;a < 20;a++){
     feld[a][11] = 1; 
   }
}
