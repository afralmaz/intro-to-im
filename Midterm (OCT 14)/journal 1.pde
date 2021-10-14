// My first draft of my midterm code:

This was my first code for the project. It had the basic ideas of what I wanted to do, but with the help of Michael, I figured out an easier way to implement what 
I wanted to do exactly. The code here is complicated because I did not make classes for the interactive squares, but did everything in the draw class. 

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

  //growing circles functins
  frameRate(30);
  centerX = width *.5;
  centerY = height *.5;
  noStroke();
}


void draw() {
  //this is the page after the start page, which contains the main game
  if (mousepress) {
    background(5);

    //square 1
    fill(#FCE0EE);
    rect(50, 50, 190, 190);
    //square 1 text
    fill(5);
    textFont(boxText);
    text("realization;", 95, 140);



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

    //REALIZATION STAGE//

    //when mouse over square 1
    if (mouseX > 50 && mouseX < 270)
    {
      if (mouseY > 100 && mouseY < 200)
      {
        fill(255);
        ellipse(224, 184, 2020, 2020);

        //black growing circle that fills the screen, continious
        fill(5);
        for (int i = 0; i<max; i++) {
          ellipse ( 400, 300, circles[i], circles[i] );
          circles[i]=circles[i]+1;
        }
        if (millis()-time>1400) {
          max=max+1;
          time = millis();
        }

        //pink circle that fills the screen , like a beating heart
        fill(#F23892);
        ellipse(centerX, centerY, Circle, Circle );

        Circle =Circle + Circlespeed;

        if (Circle > width || Circle < 15) {
          Circlespeed= -Circlespeed;
        }
      }
    }

    //ACCEPTANCE STAGE//

    //when mouse over square 2
    if (mouseX > 370 && mouseX < 450)
    {
      if (mouseY > 290 && mouseY <340)
      {
        //background
        fill(#E0FAFC);
        ellipse(224, 184, 2020, 2020);

        //instructions for this level
        textFont(boxText);
        fill(5);
        text("don't move the mouse, press any letter", 300, 200);


        //generative text
        if (keyPressed) {
          if (key == 'a' ) {
            background(#54A4B9);
            String wordText = "you are enough";
            text(wordText, 50, height/2);
          }

          if (key == 'b') {
            background(#302F2F);
            String wordText = "good job";
            text(wordText, 50, height/2);
          }
          if (key == 'c') {
            background(#6854B9);
            String wordText = "keep pushing";
            text(wordText, 50, height/2);
          }
          if (key == 'd') {
            background(#B1EDBC);
            String wordText = "love";
            text(wordText, 50, height/2);
          }
          if (key == 'e') {
            background(#FA83CB);
            String wordText = "some";
            text(wordText, 50, height/2);
          }
        }
      }
    }

    //when mouse over square 3
    if (mouseX > 600 && mouseX < 690)
    {
      if (mouseY > 580 && mouseY <540)
      {
        fill(#B6A2E5);
        ellipse(224, 184, 2020, 2020);
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
      text("instructions", 300, 350);
    }
  }
}

void mousePressed() {
  mousepress = true;
  mouseClickCount = mouseClickCount +0;
}
