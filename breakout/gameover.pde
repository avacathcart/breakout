void gameover() {
      theme.pause();
gameover.play();
  background(0);
      textSize(75);
  if (score == 3){
  background(255);
  fill(255, 183, 252);
   text("YOU WIN!", width/2, height/2);

  } else{
    background(0);
      fill(255, 183, 252);

    textSize(75);
     text("YOU LOST!", width/2, height/2);
  }
}

void gameoverClicks () {
setup();
}
