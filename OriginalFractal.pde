public void setup()
{
  size(200,200);
  ellipseMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(100, 100, 100);
}
public void myFractal( int x, int y, int siz)
{
  ellipse(x, y, siz, siz);
  if(siz > 10)
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y+siz/2,siz/2);
    myFractal(x,y-siz/2,siz/2);
  }
}