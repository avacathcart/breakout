void intro() {
    theme.play ();

  strokeWeight(3);
  stroke(0);
  background(#E6F6FF);
  textFont(enoughCute);
  textAlign(CENTER, CENTER);
  textSize (100);
  fill(255, 183, 252);
 text("BREAKOUT", width/2, height/2);
 
 //cloud
 noStroke();
  fill(255);
  circle(100, 80, 85);
  circle(150, 60, 85);
  circle(125, 90, 85);
  circle(170, 90, 85);
 circle(195, 70, 85);
 circle(215, 88, 85);
 
 fill(255);
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
 
 //start button
tactile(600, 670, 230, 50);
 strokeWeight(1);
 stroke(255, 183, 252);
 fill(255);
 rect(600, 670, 130, 50);
 textSize(30);
 fill(255, 183, 252);
  text("START", 665, 695);
}

void introClicks() {
if (mouseX > 600 && mouseX < 730 && mouseY > 670 && mouseY <720 ) {
    mode = GAME;  
}
}
