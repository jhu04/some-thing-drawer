float preX, preY;
// list of prex, prey, undo means to draw white lines over
// optimize draw function

void setup()
{
  size(1000,1000);
  frameRate(120);
  background(color(255, 255, 255));
  preX = -1;
  preY = -1;
}

void draw()
{
  if (!mousePressed)
    return;
  fill(0,0,0);
  stroke(0,0,0);
  strokeWeight(5);
  if (preX != -1)
    line(preX,preY,mouseX,mouseY);
  //circle(mouseX,mouseY,5);
  preX = mouseX;
  preY = mouseY;
}

void mouseReleased()
{
  preX = -1;
  preY = -1;
}
