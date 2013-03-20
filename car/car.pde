void setup(){
  size(500,500);
  background(122,165,232);
}

int x = 200;

void draw(){
  noStroke();
  fill(107,203,140);
  rect(0,305,width,height-305);
  fill(62,62,62);
  ellipse(x+30, 320, 75,20);
  fill(247,7,224);
  rect(x, 300, 80,20);
  rect(x+10,285,60,15);
  fill(0,0,0);
  ellipse(x+20,320,20,20);
  ellipse(x+60,320,20,20);
  fill(122,165,232);
  rect(x+47,288,20,10);
  rect(x+25,288,20,10);
}
