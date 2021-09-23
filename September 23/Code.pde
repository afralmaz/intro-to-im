oid draw(){
 //flickering light
    for (int y = 83; y < height; y +=83) {
      for (int x = 50; x < width; x += 50) {
        if (random(160) <30) {
          noStroke();
          fill(random(100), random(5), random(255));
          ellipse(x, y, 10, 10);
        }
 
      }
  
  fill(255);
  textSize(23);
  text("?", 400, 300);
}
}


class Spikes {

  float xPos, yPos, xSize, ySize;
  color myColor;

// left spikes placement
  Spikes( float _xSize, float _ySize) {
    xSize = _xSize;
    ySize = _ySize;
    xPos = random (50, 30);
    yPos = random (3, height);

    myColor = color(random(102), random(28), random(255));
  }

// spikes shape and color
  void drawSpike() {
    fill(myColor);
    noStroke();
    ellipse(xPos, yPos, xSize, ySize);
  }
}

// array setup
Spikes[] spikeLeft = new Spikes[200];

void setup() {
  size(500, 600);
  background(5);
  
  //font
  PFont font = createFont("Times-bold.vlw", 32);
 
  
  //spike etc
  for (int i=0; i < spikeLeft.length; i++) {
    spikeLeft[i] = new Spikes(
          i*2, random(5,50));
  }
  
  
  for (int i=0; i < spikeLeft.length; i++) {
    spikeLeft[i].drawSpike();
  }
}

