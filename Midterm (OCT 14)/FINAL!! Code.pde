import processing.sound.*;

//growing circles for 'realization' stage
float centerX;
float centerY;
//speed of growing circles
int Circlespeed = 6;
float Circle = 10;
// array list for circles
int [] circles = new int[700];
int time;
int max=0;
//

//font
PFont Mainfont;
PFont font;
PFont boxText;
//

//mouse pressed functions
int pressCount = 0;
int mouseClickCount = 0;
boolean mousepress = false;
//

//array of imageShow for square 2//

//string
PImage[] imageShow = new PImage[4];
PImage img = new PImage();
float x;
float y;
int r;

int base = 0;
int top = 4;

boolean clicked;
//

//sound//

import processing.sound.*;

SoundFile file;

String audioName = "home1.wav";
String path;



//CLASS FOR REALIZATION STAGE//

class SquareOne {
  //constructor
  int x;
  int y;
  int width1;
  int height1;

  //variables
  SquareOne(int _x, int _y, int _width, int _height) {
    x = _x;
    y = _y;
    width1 = _width;
    height1 = _height;
  }



  //declaration of square 1
  void drawSquare1() {
    fill(5);
    fill(#322343);
    rect(x, y, width1, height1);
  }


  // boolean mouseWithin is to make sure changes only happen in square 1
  boolean mouseWithin1(int a, int b) {
    if (a < x) {
      return false;
    }
    if (a > (x+width1)) {
      return false;
    }
    if (b < y ) {
      return false;
    }
    if (b > (y + height1)) {
      return false;
    }
    return true;
  }
} // end of realization class

//CLASS FOR ACCEPTANCE STAGE//

class SquareTwo {
  //constructor
  int x2;
  int y2;
  int width2;
  int height2;

  SquareTwo(int _x2, int _y2, int _width2, int _height2) {
    //variables
    x2 = _x2;
    y2 = _y2;
    width2 = _width2;
    height2 = _height2;
  }


  //declaration of square 2
  void drawSquare2() {
    fill(#322343);
    rect(x2, y2, width2, height2);
  }

  boolean mouseWithin2(int a2, int b2) {
    if (a2 < x2) {
      return false;
    }
    if (a2 > (x2+width2)) {
      return false;
    }
    if (b2 < y2 ) {
      return false;
    }
    if (b2 > (y2 + height2)) {
      return false;
    }
    return true;
  }
} //end of class

//CLASS FOR SELF LOVE STAGE //

class SquareThree {
  //consructor
  int x3;
  int y3;
  int width3;
  int height3;

  //variables
  SquareThree(int _x3, int _y3, int _width3, int _height3) {
    x3 = _x3;
    y3 = _y3;
    width3 = _width3;
    height3 = _height3;
  }

  //declare square 3
  void drawSquare3() {
    fill(#322343);
    rect(x3, y3, width3, height3);
  }

  boolean mouseWithin3(int a3, int b3) {
    if (a3 < x3) {
      return false;
    }
    if (a3 > (x3+width3)) {
      return false;
    }
    if (b3 < y3 ) {
      return false;
    }
    if (b3 > (y3 + height3)) {
      return false;
    }
    return true;
  }
}


void setup() {
  size (800, 700);

  //font
  Mainfont = loadFont("italics.vlw");
  font = loadFont("thintext.vlw");
  boxText = loadFont("small.vlw");
  textFont(font);

  //loading the imageShow for square 2
  for (int i = 0; i < imageShow.length; i ++)
  {
    imageShow[i] = loadImage( i +".jpg");
  }
  for (int i=0; i  < imageShow.length; i ++)
  {
    imageShow[i].resize(640, 480);
  }

  //music//

  //path = sketchPath("home1.wav");
  file = new SoundFile(this, "/Users/afralmaz/Desktop/midterm_2/data/home1.wav");
  file.play();
}

void draw() {
  //mouseclick function to move from the introduction page to game page

  if (mousepress) {
    //game page
    background(41, 16, 100);
    float purple = width/255;
    for (int i=0; i<width; i++) {
      stroke(187, 169, 206, 255-i/(purple));
      line(i, 0, i, height);
    }

    //instructions about the squares
    fill(255);
    textFont(boxText);
    text("every square is a stage people", 355, 60);
    text("expirience in their journey to self love.", 355, 90);
    text("explore each stage by interacting", 355, 150);
    text("with the squares.", 355, 180);



    //calling the squares method
    //square 1
    SquareOne realization = new SquareOne(50, 50, 190, 190);
    realization.drawSquare1();

    //square2
    SquareTwo acceptance = new SquareTwo(300, 250, 190, 190);
    acceptance.drawSquare2();

    //square3
    SquareThree selfLove = new SquareThree(550, 450, 190, 190);
    selfLove.drawSquare3();

    //text over square 1
    fill(255);
    text("realization", 93, 146);

    //text over square 2
    text("acceptance", 335, 350);

    //text over square 3
    text("self love", 605, 550);

    //REALIZATION STAGE; SQUARE 1 //

    //when mouse over square 1
    if (realization.mouseWithin1(mouseX, mouseY)) {
      //background
      fill(#9683df);
      ellipse(224, 184, 2020, 2020);


      //black growing circle that fills the screen, continious
      fill(#020024);
      for (int i = 0; i<max; i++) {
        ellipse ( 400, 300, circles[i], circles[i] );
        circles[i]=circles[i]+1;
      }
      if (millis()-time>1400) {
        max=max+1;
        time = millis();
      }

      //pink circle that fills the screen , like a beating heart
      fill(#ff65ac);
      noStroke();
      ellipse(403, 360, Circle, Circle );

      Circle =Circle + Circlespeed;

      if (Circle > width || Circle < 15) {
        Circlespeed= -Circlespeed;
      }

      //text
      textFont(boxText);
      fill(255);
      text("beating heart", 330, 300);
    }
    //END OF REALIZATION //


    //ACCEPTANCE STAGE; SQUARE 2//

    // when mouse over square 2
    if (acceptance.mouseWithin2(mouseX, mouseY)) {
      //background
      fill(#CBF7FF);
      ellipse(224, 184, 2020, 2020);

      //to slow the photos down
      frameRate(5);

      //array of photos
      if (clicked) {
        image(imageShow[int(random(0, 4))], 80, 80);
      } else {
        image(imageShow[base], 80, 80);
      }

      //text
      fill(5);
      textFont(Mainfont);
      text("what would you tell", 55, 45);
      text(" your younger self?", 100, 85);
    }

    //SELF LOVE STAGE; SQUARE3 //

    //when mouse over square 3
    if (selfLove.mouseWithin3(mouseX, mouseY)) {
      //background
      fill(#A0A8D3);
      ellipse(224, 184, 2020, 2020);

      //instructions for this level
      textFont(boxText);
      fill(5);
      text("don't move the mouse, spell the word 'love';", 300, 200);


      //generative text for square 3
      if (keyPressed) {
        fill(#021D55);
        if (key == 'l' ) {
          background(#54A4B9);
          String wordText = "My mother gave birth to twins: myself & fear. - Thomas Hobbes";
          text(wordText, 50, height/2);
        }

        if (key == 'o') {
          background(#9ECAED);
          String wordText = "I, myself, am made entirely of flaws, stitched together";
          text(wordText, 50, height/2);

          text(" with good intentions. - Augusten Burroughs", 50, height/1.8);
        }
        if (key == 'v') {
          background(#6854B9);
          String wordText = "it is never too late";
          text(wordText, 50, height/2);
        }
        if (key == 'e') {
          background(#FA83CB);
          String wordText = "you deserve to be happy!";
          text(wordText, 50, height/2);
        }
      }
    }


    //else, it is the introduction page
  } else {

    background(252, 40, 120);
    float pink = width/255;
    for (int i=0; i<width; i++) {
      stroke(255, 134, 178, 255-i/(pink));
      line(i, 0, i, height);

      //intro text
      fill(255);
      textFont(Mainfont);
      textSize(48);
      text("a journey to self love", 300, 300);

      // instruction text
      textFont(font);
      textSize(25);
      text("an exploration to the three stages to self love", 300, 350);
      textFont(boxText);
      text("press here to start!", 300, 100);
    }
  } // end of if else function
} // end of draw class


void mousePressed() {
  mousepress = true;
  mouseClickCount = mouseClickCount +0;
  clicked = true;
}
