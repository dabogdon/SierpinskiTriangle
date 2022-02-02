public int x;
public int y;
public int len=20;
public void setup() {
  size(400, 400);
  x=0;
  y=400;
  noFill();
  noStroke();
  background(0);
  fill(0, 255, 0);
  textSize(20);
}

public void draw() {
  background(0);
  len+=2;
  sierpinski(x, y, len);
  text("Zoom: "+len/10, 20, 20);
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle (x, y, x + len / 2, y - len, x + len, y);
  } else {
    sierpinski (x, y, len / 2);
    sierpinski (x + len / 2, y, len / 2);
    sierpinski (x + len / 4, y - len / 2, len / 2);
  }
}
