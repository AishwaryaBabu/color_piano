//http://processing.org/examples/keyboard.html

int rectWidth;
   
void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  rectWidth = width/26;
}

void draw() { 
  // keep draw() here to continue looping while waiting for keys
}
int alpha = 0;
void keyPressed() {

  int keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
  }
  
    float red = map(keyIndex , 0 , 25, 0 , 255);
    float blue = map(keyIndex , 0 , 25, 0 , 255);
    float green = map(keyIndex , 0 , 25, 0 , 255);

  alpha = 50;
  fill(0, alpha);
  rect(0,0, width, height);

  if(keyIndex == -1)
  {
    background(0);
  }
  else
  {
    fill(random(100, 126), 113, 198);
    float x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
  
}

void keyReleased(){
  
  
}
