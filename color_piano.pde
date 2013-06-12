//http://processing.org/examples/keyboard.html

int rectWidth;
   
void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  rectWidth = width/50;
}

void draw() { 
  // keep draw() here to continue looping while waiting for keys
}


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

  if(keyIndex == -1)
  {
    background(0);
  }
  else
  {
    fill(red+100, green+30, blue-70);
    float x = map(keyIndex, 0, 25, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
}
