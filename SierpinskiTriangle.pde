int naca = 1;

public void setup()
{
  size(800, 800);
  background(0);
  noStroke();
}

public void draw()
{
  background(255,0,0);
  fill(153, 0, 0);
  triangle(100, 700, 400, 100, 700, 700);
  fill(0);
  sierpinski(100, 700, 600);
}

public void mouseClicked()
{
  if (mouseButton == LEFT)
  {
    naca = naca + 1;
    if (naca > 8)
      naca = 1;
  }
  if (mouseButton == RIGHT)
  {
    naca = naca - 1;
    if (naca < 1)
      naca = 8;
  }
}

public void sierpinski(int x, int y, int len) 
{
  int nana = 1;
  for (int i = 0; i < naca; i++) {
    nana *= 2;
  }

  if (len < nana) {
    return;
  }

  int x1 = x + len/4;
  int y1 = y - len/2;

  triangle(
    x1, y1,
    x1 + len/2, y1,
    x1 + len/4, y1 + len/2
  );

  sierpinski(x, y, len/2);
  sierpinski(x + len/2, y, len/2);
  sierpinski(x + len/4, y - len/2, len/2);
}
