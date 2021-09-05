
self portrait:

<img width="594" alt="Screen Shot 2021-09-05 at 12 23 47 AM" src="https://user-images.githubusercontent.com/89835180/132107172-819d5fff-3966-40b0-b3e0-75108427565b.png">

(the code will be at the end).

Hello, creating the self portrait assignment took a lot of trial and error to make since this is my first time ever coding, unless we count the mandatory computer classes I had to take in highschool where I only learned that semicolons are very important. 

Creating the self portrait helped me grasp the basic coding with shapes. I used a lot of ellipses and arcs. Finding the x and y axis' and writing the correct sizes took a lot of time. I would write numbers and run the file until I could figure out the right dimensions for each shape. In the end, I got a hold of it and things got a lot easier for me. To create arcs into the shapes I wanted for the self portrait, the key component was whether it was a "PI, TWO_PI" or "PI, CHORD" (two different halves of a circle).

Using the Processing.com reference page helped me learn what each number is 
(aka. x	(float)	x-coordinate of the ellipse,
y	(float)	y-coordinate of the ellipse,
extent	(float)	width and height of the ellipse by default).

In my other failed attempts at a self portrait, I wanted to create continously color changing eyes. I found a code from the 'processing' reddit community. What I am still trying to learn is how to slow down the rate at which the colors are changing.

fill(random(255),random(255),255));
https://www.reddit.com/r/processing/comments/9gr5pb/question_how_to_create_rainbow_color_cycle_in/


From the same website, I learned the code for a floating text:

void draw(){
  float time = radians(frameCount);
  fill(255*(.5+.5*cos(time)),255,255);
  text("hello world", width/2+50*cos(time), height/2+50*sin(time));
}

I took this code and incorporated it into my self portrait, making "me" think about sleeping while the word sleep floats around my head. I also learned how to move the text around to place it where I wanted to on the portrait. I changed the width to 2.5 and the height to 7.


What I am still trying to learn right now is how to know the right measurements of a triangle when coding, I found a code with coordinates of a triangle from a youtube video (https://www.youtube.com/watch?v=jXvEoCZdL10), but I still struggled with moving the triangle to where I wanted it to be! 

triangle(20,20,60,20,40,60);

Throughout the process, I also learned the noStroke(); and stroke(); codes. After playing around with it, I learned that if I wanted a specific object with a stroke, I can write the width and colors of the stroke, and then write "noStroke" after it with other shapes that did not need strokes. I was honestly proud of myself for learning that because when I first started working on the self portrait I thought I would have to live with the lines on all the shapes :0. 


My first attempt at a self portrait (it is okay to laugh):


<img width="691" alt="Screen Shot 2021-09-05 at 1 00 40 AM" src="https://user-images.githubusercontent.com/89835180/132107935-dd44af7b-83ae-41d5-a320-4a5cc2165ca1.png">





the code:

void setup () {
  size(600,500);
  background(34,33,67);
  noStroke();

}

void draw(){

  //pillow
  
 
  fill(255,219,227);
rect(50,50,500,400,28);


//back hair

fill(57,41,40);
ellipse(300,300,450,600);

//face
  fill(255,235,214);
ellipse(300,250,300,500);


  //blanket
  
  fill(255,129,158 );
  rect(0,350,600,1000);
  fill(245,104,165);
  rect(0,250,600,100);
  
 //eyes
 

 fill(252,254, 255);
  ellipse(370,150,70,60);
  ellipse(220,150,70,60);
 

noStroke();
fill(54,36,2);
circle(370, 150, 45);
circle(220, 150, 45);

fill(5,5,5);
circle(370,150,30);
circle(220,150,30);

fill(255,251,241);
circle(374,145,10);
circle(224,145,10);




fill(57,41,40);
 arc(370,110,55,20, PI, TWO_PI);
 arc(220,110,55,20, PI, TWO_PI);
 

//mouth


fill(5,5,5);
arc(300,210,80,50,0, PI, CHORD);


//hair


fill(57,41,40);
arc(300,90,300,200, PI, TWO_PI);



//nose


fill(198,116,116);

arc(300,180,20,13,0, PI, CHORD);


//cheeks


fill(245,158,161);
ellipse(400,200,60,40);
ellipse(200,205,60,40);

//name

  float time = radians(frameCount);
  fill(255*(.5+.5*cos(time)),100,255);
  text("affy sleep woo", width/2.5+50*cos(time), height/7+50*sin(time));


}
