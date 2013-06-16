//http://processing.org/examples/keyboard.html
Maxim maxim;
AudioPlayer[] player = new AudioPlayer[26];


int rectWidth;
   
void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  rectWidth = width/26;
  
  maxim = new Maxim(this);
  for(int i=0; i < 26; i++)
  player[i] = maxim.loadFile("key"+i+".wav");
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
  
  player[keyIndex].play();
  
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
