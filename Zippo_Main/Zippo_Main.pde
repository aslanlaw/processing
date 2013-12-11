

ArrayList<Light> bandLight = new ArrayList<Light>();
ArrayList<Light> crowdLight = new ArrayList<Light>();

int numBand = 3;
int numCrowd = 1000;

// array of blue colors
color b1 = color(25, 75, random(50, 100));
color b2 = color(25, 75, random(75, 125));
color b3 = color(25, 75, random(100, 150));
color[] b_colors = { b1, b2, b3 }; //array of above colors

// array of blue colors
color r1 = color(random(225, 255), random(185, 225), random(75, 100));
color r2 = color(random(75, 100), random(185, 225), random(225, 255));
color r3 = color(random(75, 100), random(225, 255), random(185, 225));
color r4 = color(random(185, 225), random(75, 100), random(225, 255));
color[] r_colors = { r1, r2, r3, r4 }; //array of above colors

void setup() {
  size(1200, 800, P3D);
  smooth();
  
  // adding Light to bandLight (total of 3 for each band member)
  for (int i=0; i < numBand; i++) {
    Light bandPrism = new Light(5);
    bandLight.add(bandPrism);
  };
  
  // adding Light to crowdLight 
  for (int i=0; i < numCrowd; i++) {
    Light crowdPrism = new Light(random(2,5));
    crowdLight.add(crowdPrism);
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
    
    //thePrisms.shrinkLight();
    
    pushMatrix();
    thePrisms.bandUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  
  for (int i=0; i < crowdLight.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) crowdLight.get(i);
    
    pushMatrix();
    thePrisms.shrinkLight();
    thePrisms.crowdUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
}
