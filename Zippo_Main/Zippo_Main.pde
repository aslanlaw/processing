
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

  prism1 = new Light(random(25, 50));
}

void draw() {
  background(50);
  lights();
  translate(width/2, height/2);
  
  pushMatrix();
  prism1.rot();
  prism1.update();
  prism1.moveLight();
  prism1.shrinkLight();
  popMatrix();
}
