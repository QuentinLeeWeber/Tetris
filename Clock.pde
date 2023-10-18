boolean smallTick = false;
boolean Tick2 = false;
boolean Tick3 = false;
boolean Tick4 = false;

void ClockUpdate(){
  if(frameCounter % 60 == 0){
    Tick = true; 
  } else {
    Tick = false; 
  }
  
  if(frameCounter % 4 == 0){
    smallTick = true; 
  } else {
    smallTick = false; 
  }
  
  if(frameCounter % 3 == 0){
    Tick2 = true; 
  } else {
    Tick2 = false; 
  }
  if(frameCounter % 3 == 0){
    Tick3 = true; 
  } else {
    Tick3 = false; 
  }
  if(frameCounter % 4440 == 0){
    Tick4 = true; 
  } else {
    Tick4 = false; 
  }
}
