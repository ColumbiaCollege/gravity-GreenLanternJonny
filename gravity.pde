//original code from : https://processing.org/examples/bounce.html 
// made by: Jonathan Layes
PImage city;
PImage dark;
PImage backdrop;

int rad = 20; // ending position  
float yspeed = 0.8;  // Speed of the shape
int ydirection = 1;  // speed of the shape return
float ypos; //string for y coordinate 


void setup() {
  size(512, 512);
  noStroke();
  fill(#FFD900);

  ypos = height/2; // starting position

  backdrop = loadImage("CityBackground.jpg"); //background image
  city = loadImage("Buildings.png"); // building image
  dark = loadImage("No light.png"); // black background
}

void draw() {



  //object will fall and climb back up
  ypos = ypos + ( yspeed * ydirection );
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  // Images used:
  image(backdrop, 0, 0, 512, 512); // last image
  image(dark, 0, -1, 512, 514); 
  rect(230, ypos, 20, 18); 
  image(city, 0, -1, 512, 514); // first image
}
