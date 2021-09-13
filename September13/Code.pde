//moving shapes
float shapes;
float shapespeed = 70;

//background mousepress
int pressCount =0;
int mouseClickCount = 0;
boolean mousepress = false;

//for other things
PFont font;


void setup () {
  size(600, 600);
  //background
  for (int i = 0; i < width; i++) {
    stroke(map(i, 0, width, 0, #98D9C3), 0, 255-map(i, 0, width, 0, 255));
    line(i, 0, i, height);
  }

  //font
  fill(255);
  font = loadFont("typewriter.vlw");
  textFont(font);

  //frame rates
  println(frameRate);
  frameRate(3);
}

void draw () {
  //when mouse pressed, it takes you to 'chapter1'
  if (mousepress) {
    background(color(#EBF0EF));
    fill(5);
    textSize(20);
    text("ch 1: beginning", 300, 300);
    textSize(15);
    text("start game *** end game", 300, 360);

    //shapes
    ellipse(shapes, height/20, 32, 32);
    rect(shapes, height/1.5, 32, 32);
    shapes = shapes + shapespeed;
    if (shapes > width) {
      shapespeed = -50;
    }

    if (shapes<0) {
      shapespeed = 50;
    }
  } else {
    for (int i = 0; i < width; i++) {
      stroke(map(i, 0, width, 0, #98D9C3), 0, 255-map(i, 0, width, 0, 255));
      line(i, 0, i, height);
    }

    //start page

    //background decor
    for (int y = 83; y < height; y +=83) {
      for (int x = 50; x < width; x += 50) {
        if (random(100) <30) {
          noStroke();
          fill(random(100), random(5), random(255));
          ellipse(x, y, 10, 10);
        }


        //welcome text
        fill(255);
        textSize(13);
        text("welcome stranger, you have reached the beginning of your", 15, 25);
        text("journey, mr. mushroom wants to wish you luck", 25, 45);

        //barrier
        for (int dots= 20; dots < width; dots = dots + 50) {
          noStroke();
          fill(255);
          ellipse(dots, 80, 10, 10);
        }

        for (int dots2 =20; dots2 < width; dots2 = dots2 +50) {
          noStroke();
          fill(255);
          rect(dots2, 500, 10, 10);
        }

        //mushroom shadow
        fill(random(15), random(11), random(128), 60);
        ellipse(300, 270, 300, 300);


        //mushroom hat
        fill(#D3F1FF);
        rect(285, 140, 30, 60);
        ellipse(302, 170, 80, 20);

        //mushroom body
        fill(255);
        arc(300, 250, 150, 150, PI, TWO_PI);
        rect(274, 230, 50, 100, 100);

        //mushroom eyes
        fill(5);
        ellipse(272, 210, 15, 15);
        ellipse(330, 210, 15, 15);

        //mushroom mouth
        strokeWeight(5);
        stroke(5);
        line(290, 220, 312, 220);

        //mushroom mouth smiles

        if (mouseX > 285 && mouseX < 320)
        {
          if (mouseY > 210 && mouseY < 230)
          {

            fill(#FAA7BD);
            strokeWeight(3);
            arc(300, 220, 28, 28, 0, PI);
          }
        }
      }
    }
  }
}


void mousePressed() {
  mousepress = true;
  mouseClickCount = mouseClickCount +1;
}
