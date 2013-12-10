
Light prism1;

ArrayList<Light> bandLight = new ArrayList<Light> ();
ArrayList<Light> crowdLight = new ArrayList<Light> ();

// array of blue colors
color b1 = color(25, 75, random(50, 100));
color b2 = color(25, 75, random(75, 125));
color b3 = color(25, 75, random(100, 150));
color[] b_colors = { b1, b2, b3 }; //array of above colors

void setup() {
  size(1200, 800, P3D);

  prism1 = new Light(100);
}

void draw() {
  background(50);
  lights();
  translate(width/2, height/2);
  
  pushMatrix();
  rotateX(frameCount*PI/200);
  rotateY(frameCount*PI/300);
  stroke(255);
  fill(b_colors[int(random(0,3))]);
  //fill(c1);
  prism1.drawLight();
  prism1.moveLight();
  popMatrix();
}
