void setup(){
  size(500,500);
}

int x = 200;

void draw(){
  noStroke();
  fill(247,7,224);
  rect(x, 300, 80,20);
  rect(x+10,285,60,15);
  fill(0,0,0);
  ellipse(x+20,320,20,20);
  ellipse(x+60,320,20,20);
}
