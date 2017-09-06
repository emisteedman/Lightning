void setup(){
  size(500,500);
  background(0);
  strokeWeight(10);
}
int x = 0;
int y = 250;
int x2;
int y2;

void draw(){
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  x2 = x + (int)(Math.random()*10);
  y2 = y + (int)(Math.random()*19)-9;
  line(x,y,x2,y2);
  x = x2;
  y = y2;

  if (x >= 500) {
      x = 0;
      y = 250;
      x2 = x;
      y2 = y;
      noLoop();
  }
}
void mousePressed(){
  redraw();
  loop();
}
