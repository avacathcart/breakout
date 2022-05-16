void gameover() {
      theme.pause();
gameover.play();
  background(0);
      textSize(75);
  if (score == 78){
  background(255);
  fill(#E6F6FF);
  noStroke();
  circle(100, 80, 85);
  circle(150, 60, 85);
  circle(125, 90, 85);
  circle(170, 90, 85);
 circle(195, 70, 85);
 circle(215, 88, 85);
 
  circle(100 +500, 200+80, 85);
  circle(150 +500, 200+60, 85);
  circle(125 + 500,200+ 90, 85);
  circle(170 +500, 200+90, 85);
 circle(195 + 500, 200+70, 85);
 circle(215 +500, 200+88, 85);
 
   circle(100, 500+ 80, 85);
  circle(150, 500+60, 85);
  circle(125, 500+90, 85);
  circle(170, 500+90, 85);
 circle(195, 500+70, 85);
 circle(215, 500+88, 85);
  fill(255, 183, 252);
   text("YOU WIN!", width/2, height/2);
 

  } else{
    background(0);
      fill(#E6F6FF);

    textSize(75);
     text("YOU LOST!", width/2, height/2);
          
       noStroke();
       fill(255, 183, 252);
     circle(100, 80, 85);
  circle(150, 60, 85);
  circle(125, 90, 85);
  circle(170, 90, 85);
 circle(195, 70, 85);
 circle(215, 88, 85);
 
  circle(100 +500, 200+80, 85);
  circle(150 +500, 200+60, 85);
  circle(125 + 500,200+ 90, 85);
  circle(170 +500, 200+90, 85);
 circle(195 + 500, 200+70, 85);
 circle(215 +500, 200+88, 85);
 
   circle(100, 500+ 80, 85);
  circle(150, 500+60, 85);
  circle(125, 500+90, 85);
  circle(170, 500+90, 85);
 circle(195, 500+70, 85);
 circle(215, 500+88, 85);
  fill(255, 183, 252);
  }
}

void gameoverClicks () {
setup();
}
