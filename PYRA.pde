int t = 0;
int u = 21;
int c = 0;
int e = 0;
void setup() {
  size(750, 750, P3D);
}

void draw() {
  t=0;
  e=0;
  c=0;
  u=20;
  lights();
  stroke(0);
  translate(275, 275);
  background(255);
    translate(100,100,75);
  rotateX(mouseY * 0.015);
  rotateY(mouseX * -0.015);
  translate(-100,-100,-100);
  for (t=0; t < 20; t++) {
    translate(5, 5, 10);
    u=u-1;
    for (e=0; e < u; e++) {
      for (c=0; c < u; c++) {
        fill(240,230,140);
        box(10, 10, 10);
        translate(10, 0);
      }
      translate(-10*u, 10);
    }
    translate(0, -10*u);
  }

}