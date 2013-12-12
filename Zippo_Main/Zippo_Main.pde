//showing arrays
boolean one, two, three, four, five, six;
void keyPressed(){
  if (key == 'q' || key == 'Q') one = true;
  if (key == 'w' || key == 'W') two = true;
  if (key == 'a' || key == 'A') three = true;
  if (key == 's' || key == 'S') four = true;
  if (key == 'd' || key == 'D') five = true;
  if (key == 'f' || key == 'F') six = true;
}

ArrayList<Light> bandLight1 = new ArrayList<Light>();
ArrayList<Light> bandLight2 = new ArrayList<Light>();
ArrayList<Light> crowdLight1 = new ArrayList<Light>();
ArrayList<Light> crowdLight2 = new ArrayList<Light>();
ArrayList<Light> crowdLight3 = new ArrayList<Light>();
ArrayList<Light> crowdLight4 = new ArrayList<Light>();

int numBand1 = 1;
int numBand2 = 2;
int numCrowd1 = 25;
int numCrowd2 = 150;
int numCrowd3 = 200;
int numCrowd4 = 25;
/*
//array of yellow colors
color r1 = color(random(225, 255), random(200, 225), random(75, 100));
color r2 = color(random(225, 255), random(185, 200), random(75, 100));
color r3 = color(random(225, 255), random(165, 185), random(75, 100));
color[] r_colors = { r1, r2, r3 }; //array of above colors
*/
// array of blue colors
color b1 = color(random(75, 100), random(185, 225), random(225, 255));
color b2 = color(random(75, 100), random(185, 200), random(225, 255));
color b3 = color(random(75, 100), random(165, 185), random(225, 255));
color[] b_colors = { b1, b2, b3 }; //array of above colors

// array of green colors
color g1 = color(random(75, 100), random(225, 255), random(200, 225));
color g2 = color(random(75, 100), random(225, 255), random(185, 200));
color g3 = color(random(75, 100), random(225, 255), random(165, 185));
color[] g_colors = { g1, g2, g3 }; //array of above colors

// array of purple colors
color p1 = color(random(200, 225), random(75, 100), random(225, 255));
color p2 = color(random(185, 200), random(75, 100), random(225, 255));
color p3 = color(random(165, 185), random(75, 100), random(225, 255));
color[] p_colors = { p1, p2, p3 }; //array of above colors

color[][] chooseColor = { b_colors, g_colors, p_colors };
int arrayLength = chooseColor.length;


void setup() {
  size(1200, 800, P3D);
  smooth();
  
  // adding Light to bandLight (total of 3 for each band member)
  for (int i=0; i < numBand1; i++) {
    Light bandPrism = new Light(5);
    bandLight1.add(bandPrism);
  };
  
    for (int i=0; i < numBand2; i++) {
    Light bandPrism = new Light(5);
    bandLight2.add(bandPrism);
  };
  
  // adding Light to crowdLight 
  for (int i=0; i < numCrowd1; i++) {
    Light crowdPrism = new Light(random(2,5));
    crowdLight1.add(crowdPrism);
  };
  
    for (int i=0; i < numCrowd2; i++) {
    Light crowdPrism = new Light(random(2,5));
    crowdLight2.add(crowdPrism);
  };
  
    for (int i=0; i < numCrowd3; i++) {
    Light crowdPrism = new Light(random(2,5));
    crowdLight3.add(crowdPrism);
  };
  
    for (int i=0; i < numCrowd4; i++) {
    Light crowdPrism = new Light(random(2,5));
    crowdLight4.add(crowdPrism);
  };
  
  //prism1 = new Light(25);
  //prism1 = new Light(random(25, 50));
}

void draw() {
  background(50);
  lights();
  
  translate(width/2, height/2);
  
  if (one == true){
  
  for (int i=0; i < bandLight1.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) bandLight1.get(i);
    
    //thePrisms.shrinkLight();
    pushMatrix();
    thePrisms.shrinkLight();
    thePrisms.bandUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  }
  
    if (two == true){
  
  for (int i=0; i < bandLight2.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) bandLight2.get(i);
    
    
    //thePrisms.shrinkLight();
    
    pushMatrix();

    thePrisms.shrinkLight();
    thePrisms.bandUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  }
  
  if (three == true){
  
  for (int i=0; i < crowdLight1.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) crowdLight1.get(i);

    
    pushMatrix();
    thePrisms.shrinkLight();
    thePrisms.crowdUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  }
  
    if (four == true){
  
  for (int i=0; i < crowdLight2.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) crowdLight2.get(i);
    
    pushMatrix();
    thePrisms.shrinkLight();
    thePrisms.crowdUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  }
  
    if (five == true){
  
  for (int i=0; i < crowdLight3.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) crowdLight3.get(i);
    
    pushMatrix();
    thePrisms.shrinkLight();
    thePrisms.crowdUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  }
  
    if (six == true){
  
  for (int i=0; i < crowdLight4.size(); i++) {
    
    // getting Light from bandLight array
    Light thePrisms = (Light) crowdLight4.get(i);
    
    pushMatrix();
    thePrisms.shrinkLight();
    thePrisms.crowdUpdate();
    thePrisms.moveLight();
    popMatrix();
  }
  }
  
}
