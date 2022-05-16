void game () {
  strokeWeight(1);
  stroke(0);
  background(#E6F6FF);
  //paddle
  fill(255);
   circle(px, py, pd);
  
  //move padddle
if (rightkey == true && px<750) px = px +5;
if (leftkey == true & px>50) px = px - 5;

   //ball
  fill(255);
  circle(bx, by, bd);
  
  //move ball
   bx = bx + vx;
   by = by + vy;
  
   d = dist(px, py, bx, by);
  //bounce
  if (d <= bd/2 + pd/2) {
       vx = (bx - px)/15;
    vy = (by - py)/15;
}

 if (by < bd/2 ){
    vy = vy * -1;
  }
  
  if (bx < bd/2 || bx > width -bd/2) {
    vx = vx * -1;
  }
  
   //if (by > height + bd/2){
   //}
  
   if (by > height + bd/2){
     lives = lives -1;
     by = height-200;
     bx = width/2;
     vx = 0;
      bump.rewind();
    bump.play(); 
   }
  
  //brick -----------------------------------------
  //circle(x[0], y[0], brickd);
  //circle(x[1], y[1], brickd);
  //circle(x[2], y[2], brickd);

  int i = 0;
while (i<n){
  if (alive[i] == true) {
  manageBrick(i);
  }
  i=i+1;
} 

//scoreboard
textAlign(CENTER, CENTER);
  textSize (25);
  fill(255);
 text("SCORE: " + score, width/2, 15);
  text("LIVES: " + lives, width/2, 35);
}

void gameClicks () {
  mode = PAUSE;
}

void manageBrick ( int i ) {
 // if (i <12){
 //   fill(11, 22, 255);
 // }
  
 //if ( 12<i && i < 25) {
 //  fill(212, 72, 245);
 //}
 //if (i> 25 && i < 38) {
 //  fill(236, 250, 45);
 //}
 
 //if (i > 38 && i < 51) {
 //  fill(250, 78, 199);
 //}
 
 // if (i > 51 && i < 64) {
 //  fill(25, 247, 153);
 //} 
 
 //if (i > 64 && i < 78) {
 //  fill(125, 228, 247);
 //} 

//if (y[i] == 100) fill(11, 22, 255);
//if (y[i] == 150) fill(212, 72, 245);
//if (y[i] == 200) fill(236, 250, 45);
//if (y[i] == 250)fill(250, 78, 199);
//if (y[i] == 300) fill(25, 247, 153);
//if (y[i] == 350) fill(125, 228, 247);

if (y[i] == 100) fill(pink);
if (y[i] == 150) fill(salmon);
if (y[i] == 200) fill(orange);
if (y[i] == 250)fill(green);
if (y[i] == 300) fill(green2);
if (y[i] == 350) fill(purple);

   circle(x[i], y[i], brickd);
  if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
       vx = (bx - x[i])/10;
    vy = (by - y[i])/10;
    alive[i] = false;
    score ++;
    coin.rewind();
  coin.play();
} 
if (score == 78) {
  mode = GAMEOVER;
    }
 if (lives == 0) {
   mode = GAMEOVER;
 }
}
