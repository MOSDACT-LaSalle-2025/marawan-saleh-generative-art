/* 
Name:Marawan Saleh
Date:23/08/2025
Description: This Processing code creates a hypnotic, animated circular pattern that rotates and pulsates with a wave-like distortion, resulting in a mesmerizing, infinitely looping animation.
Place of production: Barcelona
Instructions (if necessary): Change the values of float to your liking
*/
float angle = 0;
float speed = 0.05;

void setup() {
  size(800, 800);
  noFill();
  stroke(255);
  background(0);
}

void draw() {
  background(0);
  translate(width/2, height/2);

  float radius = 200; 
  int points = 200;   
  
  beginShape();
  for (int i = 0; i < points; i++) {
    float t = map(i, 0, points, 0, TWO_PI);
    
  
    float wave = sin(t * 6 + angle) * 50;
    
   
    float x = cos(t + angle) * (radius + wave);
    float y = sin(t + angle) * (radius + wave);
    
    vertex(x, y);
  }
  endShape(CLOSE);

  angle += speed;
}
