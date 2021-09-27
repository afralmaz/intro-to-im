/*my generative text will try to depict BPD (borderline personality disorder) thoughts.
 i struggle with BPD and its often described to be black
 and white when it comes to dealing with emotions so with this project, i will try to
 show that */

int newDark = 1;
int newWhite = 1;

// font and coordinates
PFont font;
float x, y;

//the string of words that will be displayed on either side

String[] Dark = new String[]{"bad", "not good enough", "horrible", "fat", "i hate you",
  "never", "it's not fine", "obsess", "none", "don't go", "disapointed"};

String[] White = new String[]{"good", "i love you", "it's okay", "thin", "angel", "always",
  "all", "proud"};

void setup () {
  size(800, 700);

  //font things
  font = loadFont("Serif.vlw");
  textFont(font);
  x = width/3;
  y = height/2.3;
  fill(#304CB7);
  textSize(30);
}

void draw() {
  background(255); // right side will be white

  //left side will be dark
  fill(5);
  rect(0, 0, 400, height);

  //printing dark & white
  textAlign(LEFT);
  fill(255);
  text(Dark[newDark], width/7, y);

  textAlign(RIGHT);
  fill(5);
  text(White[newWhite], width/1.2, y);
}

void mousePressed() {

  if (mouseX < width/5) {
    newDark = int(random(Dark.length));
    fill(#FFFFFF);
  }

  if (mouseX > width/2.2) {
    newWhite = int(random(White.length));
    fill (5);
  }
}
