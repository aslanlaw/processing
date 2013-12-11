float a = 0.0;
float s = 0.0;


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

  prism1 = new Light(25);
  //prism1 = new Light(random(25, 50));
}

void draw() {
  background(50);
  lights();
  
  a = a - 0.04;
  s = 1/((a)*0.8);
  
  translate(width/2, height/2);
  
  scale(s); 
  
  pushMatrix();
  prism1.update();
  prism1.moveLight();
  popMatrix();
}
