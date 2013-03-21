void setup() {
  size(500, 500);
}

int x = 200, speed = 1;
float acceleration=0.5;
int y = -10, maxY = 160;
boolean down = true;

void draw() {
  background(122, 165, 232);
  noStroke();
  fill(107, 203, 140);
  rect(0, 305, width, height-305);
  fill(62, 62, 62);
  ellipse(x+30, 320, 75, 20);
  fill(247, 7, 224);
  rect(x, y-20, 80, 20);
  rect(x+10, y-35, 60, 15);
  fill(0, 0, 0);
  ellipse(x+20, y, 20, 20); // wheels
  ellipse(x+60, y, 20, 20); // wheels
  fill(122, 165, 232);
  rect(x+47, y-32, 20, 10); // window
  rect(x+25, y-32, 20, 10); // window

  // be prep'd to remove

  if (maxY == 1) {
    y = 320;
    x+=speed;
  }

  if (down == true && maxY >=2) {
    y+= acceleration*2;
    acceleration+=0.25;
    if (y >= 320 || acceleration == 0) {
      down = false;
    }
  }
  else if (down == false && maxY >=2) {
    y-= acceleration;
    acceleration-=0.25;
    if (y <= maxY || acceleration == 0) {
      down = true;
      maxY = maxY - maxY/2;
    }
  }
  else {
    x+=speed;
  }
  if (y<500) {
    println("Y: " + y + "\tAcc: " + acceleration + "\tMaxY: " + maxY);
  }


  //x+=speed;
}

