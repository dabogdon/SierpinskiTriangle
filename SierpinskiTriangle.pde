public int x;
public int y;
public int leng=20;
public void setup() {
  size(400, 400);
  x=0;
  y=400;
  noFill();
  background(0);
  noStroke();
  fill(0,255,0);
  textSize(20);
}

public void draw() {
  if (leng/10>=540) {
    return;
  }
  background(0);
  leng+=2;
  sierpinski(x, y, leng);
  text("Zoom: "+(int)(leng/10), 20, 20);
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
