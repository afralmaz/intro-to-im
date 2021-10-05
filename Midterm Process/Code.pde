
//font
PFont Mainfont;
PFont font;
PFont boxText;


//mouse pressed functions
int pressCount = 0;
int mouseClickCount = 0;
boolean mousepress = false;

void setup () {
  size(800, 700);

  //font
  Mainfont = loadFont("italics.vlw");
  font = loadFont("thintext.vlw");
  boxText = loadFont("small.vlw");
  textFont(font);
}

void draw() {
  if (mousepress) {
    background(5);

    //square 1
    fill(#FCE0EE);
    rect(50, 50, 190, 190);
    //square 1 text
    fill(5);
    textFont(boxText);
    text("realization;", 95, 140);

    //when mouse over square 1
    if (mouseX > 100 && mouseX < 300)
    {
      if (mouseY > 80 && mouseY < 90)
      {
        fill(255);
      }
    }

    //square 2
    fill(#FCE0EE);
    rect(310, 250, 190, 190);
    //square 2 text
    fill(5);
    textFont(boxText);
    text("acceptance;", 345, 340);

    //square 3
    fill(#FCE0EE);
    rect(550, 450, 190, 190);
    //square 3 text
    fill(5);
    textFont(boxText);
    text("self love;", 595, 545);
  } else {
    //introduction page
    background(252, 40, 120);
    float pink = width/255;
    for (int i=0; i<width; i++) {
      stroke(255, 134, 178, 255-i/(pink));
      line(i, 0, i, height);

      //intro text
      textFont(Mainfont);
      textSize(48);
      text("a journey to self love", 300, 300);

      // instruction text
      textFont(font);
      textSize(25);
      text("instructions", 300, 350);
    }
  }
}

void mousePressed() {
  mousepress = true;
  mouseClickCount = mouseClickCount +0;
}
