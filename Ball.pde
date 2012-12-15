class Ball
{
  int x;
  int y;
  int R;
  int realr;
  int timecount;

  //Construct
  Ball(int _x, int _y, int _realr, int _R)
  {
    x = _x;
    y = _y;
    realr = _realr;
    R = _R;
    timecount = 0;
  }

  void draw()
  {
    if (timecount >= 2*R)
    {
      timecount -= 2*R;
    }

    timecount++;

    stroke(255, 255, 255);
    fill(255, 255, 255);
    ellipse(x, y, 2*realr, 2*realr);// R*2, R*2);
    noFill();
    for (int i=0;i<RINGNUM;i++)
    {
      int tempring = timecount + i*(4*R/RINGNUM);

      if (2*R < tempring && tempring < 4*R)
      {
        //TODO: need improvement for gradation
        stroke(255, 255, 255, 
        255*(6*R-tempring)/(20*R));
        //fill(0, 255, 0);
        ellipse(x, y, tempring, tempring);
        //TODO: change transparency of the ring
      }
    }
  }
}
