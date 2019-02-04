int nbr_circles = 2;
void setup() {    
  size(600, 600);
  smooth();
} 

void draw() { 
  background(0, 255, 0);
  float cx = width/2.0;
  float cy = height/2.0;
  fill(0);
  //float x, y; //  
  for (int i = 0; i < nbr_circles; i++) 
  {
    float angle = i * TWO_PI / nbr_circles;
    float x = cx + 110.0 * cos(angle);                
    float y = cy + 110.0 * sin(angle);                
    ellipse(x, y, 20, 20);
    ellipse(width/2, height/2, 200, 200);
  }
}

void mousePressed() {

  if (mouseButton == LEFT) {
    if (nbr_circles < 20)
      nbr_circles = nbr_circles + 1;
  } else if (mouseButton == RIGHT) {
    if (nbr_circles > 2) 
      nbr_circles = nbr_circles - 1;
  }
}
