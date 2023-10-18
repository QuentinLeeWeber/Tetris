import processing.sound.*;

int[][] idealFeld = {{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1} };

int ColorV = 0;

Particle[] particles = new Particle[10];

Button startButton = new Button(30, 225, 200, 75);
Button exitButton = new Button(30, 320, 200, 75);

String[] highscoreStrings = new String[]{"0"};
int highscore;
int score;
int shortScore;

PImage tex1;
PImage tex2;
PImage tex3;
PImage tex4;
PImage tex5;
PImage tex6;
PImage tex7;
PImage dmg10;
PImage dmg9;
PImage dmg8;
PImage dmg7;
PImage dmg6;
PImage dmg5;
PImage dmg4;
PImage dmg3;
PImage dmg2;
PImage dmg1;
PImage home;
PImage homePlay;
PImage homeLeave;
PImage back;

SoundFile music;

boolean Tick = false;
float frameCounter;
Figur figur = new Figur();

int[][] feld = {{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1} };

void setup(){
  frameRate(60);
  background(0);
  size(400, 720);
  
  //back = loadImage("back.png");
  //back.resize(10 * 40, 18 * 40);
  
  //image(back, 0, 0);
  
  music = new SoundFile(this, "music.mp3");
  
  highscoreStrings = loadStrings("highscore.txt");
  highscore = Integer.valueOf(highscoreStrings[0]);
  
  figur.newFigure();
  
  home = loadImage("home.jpg");
  home.resize(10 * 40, 15 * 40);
  homeLeave = loadImage("home_leave.jpg");
  homeLeave.resize(10 * 40, 15 * 40);
  homePlay = loadImage("home_play.jpg");
  homePlay.resize(10 * 40, 15 * 40);
  tex1 = loadImage("texture1.png");
  tex1.resize(40, 40);
  tex2 = loadImage("texture2.png");
  tex2.resize(40, 40);
  tex3 = loadImage("texture3.png");
  tex3.resize(40, 40);
  tex4 = loadImage("texture4.png");
  tex4.resize(40, 40);
  tex5 = loadImage("texture5.png");
  tex5.resize(40, 40);
  tex6 = loadImage("texture6.png");
  tex6.resize(40, 40);
  tex7 = loadImage("texture7.png");
  tex7.resize(40, 40);
  dmg10 = loadImage("dmg10.png");
  dmg10.resize(10 * 40, 18 * 40);
  dmg9 = loadImage("dmg9.png");
  dmg9.resize(10 * 40, 18 * 40);
  dmg8 = loadImage("dmg8.png");
  dmg8.resize(10 * 40, 18 * 40);
  dmg7 = loadImage("dmg7.png");
  dmg7.resize(10 * 40, 18 * 40);
  dmg6 = loadImage("dmg6.png");
  dmg6.resize(10 * 40, 18 * 40);
  dmg5 = loadImage("dmg5.png");
  dmg5.resize(10 * 40, 18 * 40);
  dmg4 = loadImage("dmg4.png");
  dmg4.resize(10 * 40, 18 * 40);
  dmg3 = loadImage("dmg3.png");
  dmg3.resize(10 * 40, 18 * 40);
  dmg2 = loadImage("dmg2.png");
  dmg2.resize(10 * 40, 18 * 40);
  dmg1 = loadImage("dmg1.png");
  dmg1.resize(10 * 40, 18 * 40);
  
  for(int i = 0; i < 10;i++){
     particles[i] = new Particle();
  }
  music.loop();
}



void draw(){
  if(frameCounter == 0){
    delay(3000);
  }
  //feld[5][5] = 3;
  if(shortScore > 0 && Tick3){
     if(shortScore <= 3){
       score += shortScore;
       shortScore = 0;
     } else {
       shortScore -= 3;
       score += 3;
     }
  }
  
  ClockUpdate();
  frameCounter++;
  background(0);
  
  if(down == false){
    zeilenSchwung();
    drawFeld();
    figur.update();
    figur.render();
    //checkLine();
    for(int i = 0; i < 10;i++){
       particles[i].update();
       particles[i].render();
    }
    critTod();
    checkForTod();
    
    fill(7, 211, 247);
    textSize(15);
    text("Score: " + score, 10, 30);
    
  } else {
    image(home, 0, 0);
    
    startButton.update();
    exitButton.update();
    
    if(exitButton.hov){
      image(homeLeave, 0, 0);
    }
    if(startButton.hov){
      image(homePlay, 0, 0);
    }
    
    fill(7, 211, 247);
    textSize(35);
    text("Score: " + score, 50, 550);
    text("Highcore: " + highscore, 50, 600);
    
    if(exitButton.pressed){
      highscoreStrings[0] = Integer.toString(highscore);
      saveStrings("highscore.txt", highscoreStrings);
      exit();
    }
    if(startButton.pressed){
      feld = idealFeld;
      reset();
      score = 0;
      figur.newFigure();
      down = false;
    }
    if(score > highscore){
      highscore = score; 
    }
  }
}

  void keyPressed(){
    if(down == false){
      if (keyCode == 'w' || keyCode == 'W'){
        figur.tryTurn(); 
      }
      if (keyCode == 'a' || keyCode == 'A'){
        figur.tryWalkSide(-1);
      }
      if (keyCode == 'd' || keyCode == 'D'){
        figur.tryWalkSide(1);
      }
      if (keyCode == 's' || keyCode == 'S'){
        figur.tryDown();
      }   
      if (keyCode == 'Q' || keyCode == 'q'){
        down = true;
        if(score > highscore){
          highscore = score; 
        }
      }
    }
  }
