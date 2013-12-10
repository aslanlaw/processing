
Light prism1;

ArrayList<Light> bandLight = new ArrayList<Light> ();
ArrayList<Light> crowdLight = new ArrayList<Light> ();

void setup() {
  size(1200, 800, P3D);
  
  prism1 = new Light(75);
}

void draw() {
  background(50);
  lights();
  translate(width/2, height/2);
  
  pushMatrix();
  rotateX(frameCount*PI/200);
  rotateY(frameCount*PI/300);
  stroke(255);
  fill(50, 150, 255);
  prism1.drawLight();
  popMatrix();
  
}
