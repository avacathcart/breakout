void tactile(int x, int y, int w, int h) {
  if  (mouseX > x && mouseX<x+w && mouseY >y && mouseY < y+h) {
    stroke(255);
  } else {
    stroke(255, 183, 252);
  }
}
