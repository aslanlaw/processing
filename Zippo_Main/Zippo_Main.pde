

ArrayList<Light> bandLight = new ArrayList<Light>();
ArrayList<Light> crowdLight = new ArrayList<Light> ();

int numBand = 10;

// array of blue colors
color b1 = color(25, 75, random(50, 100));
color b2 = color(25, 75, random(75, 125));
color b3 = color(25, 75, random(100, 150));
color[] b_colors = { b1, b2, b3 }; //array of above colors


void setup() {
  size(1200, 800, P3D);
  
  // adding Light to bandLight (total of 3 for each band member)
  for (int i=0; i < numBand; i++) {
    Light bandPrism = new Light(25);
    bandLight.add(bandPrism);
  };
  //prism1 = new Light(25);
  //prism1 = new Light(random(25, 50));
}

void draw() {
  background(50);
  lights();

  translate(width/2, height/2);
  for (int i=0; i < bandLight.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) bandLight.get(i);
    
    thePrisms.shrinkLight();
    
    pushMatrix();
    thePrisms.update();
    thePrisms.moveLight();
    popMatrix();
  }
}
