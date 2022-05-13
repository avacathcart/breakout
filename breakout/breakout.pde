import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pallette
color pink = #FF9AA2;
color salmon = #FFB7B2;
color orange = #FFDAC1;
color green = #E2F0CB;
color green2 = #B5EAD7;
color purple = #C7CEEA;
//brick variables
int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;
int score;
int lives;

float bx, by, bd, vx, vy, px, py, pd;
float d;

//keyboard variables
boolean rightkey, leftkey;
PFont enoughCute;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover; 

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

void setup() {
  strokeWeight(1);
  stroke(0);
  lives = 3;
  score = 0;
  brickd = 30;
   n = 78;
  x = new int[n];
  y = new int[n];
  tempx = 100;
  tempy = 100;
  alive = new boolean[n];
  int i = 0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive [i] = true;
    tempx = tempx + 50;
    if (tempx > width-100) {
      tempx = 100;
      tempy = tempy + 50;
    }
    i = i+1;
  }
     
  //x[0] = 100;
  //y[0] = 100;
   
  //x[1] = 400;
  //y[1] = 100;
  
  //x[2] = 700;
  //y[2] = 100;
  
  //x[3] = 100;
  //y[3] = 200;
  
  size(800, 800);
  background(0);
  mode = INTRO;
  
  bx = width/2;
  by = height-200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  
   vx = 0;
   vy = 1;
   
  enoughCute = createFont ("Enough Cute For You..ttf", 100);
  
   minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");

}

void draw () {
  if (mode == INTRO) { 
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  }else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
} 
