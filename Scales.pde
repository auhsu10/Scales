void setup() {
  size(500,500);
  fill(10,10,80);
  rect(0,0,500,500);
}

void draw() {
  for(int y=500;y>=-20;y-=15) {
    for(int x=15;x<=480;x+=20) {
       scale(x,y);
    }
  }
  for(int y2=500;y2>=-20;y2-=8) {
    for(int x2=0;x2<=480;x2+=20) {
       scalebig(x2,y2);
    }
  }
  for(int y3=500;y3>=-20;y3-=8) {
    for(int x3=8;x3<=500;x3+=20) {
       scalebig2(x3,y3);
    }
  }
}

void scale(int x, int y) {
  int mousecolor2 = mouseX/8;
  int mousecolor = mouseY/4;
  fill(mousecolor,mousecolor2,(int)(Math.random()*255));
  noStroke();
  rect(x,y-20,10,10);
  stroke(0);
  strokeWeight(1);
  ellipse(x+5,y,10,20);
  noStroke();
  rect(x,y-20,10,10);
}

void scalebig(int x2, int y2) {
  int mousecolor = mouseY/4;
  fill(mousecolor,(int)(Math.random()*65),(int)(Math.random()*255));
  stroke(0);
  strokeWeight(1);
  beginShape();
  vertex(x2,y2);
  vertex(x2+4,y2+5);
  vertex(x2+8,y2+5);
  vertex(x2+12,y2);
  vertex(x2+10,y2-5);
  vertex(x2+2,y2-5);
  endShape(CLOSE);
}

void scalebig2(int x3, int y3) {
  int mousecolor2 = mouseX/8;
  int mousecolor = mouseY/4;
  fill(mousecolor,mousecolor2,(int)(Math.random()*255));
  stroke(0);
  strokeWeight(1);
  beginShape();
  vertex(x3,y3);
  vertex(x3+4,y3+5);
  vertex(x3+12,y3+5);
  vertex(x3+16,y3);
  vertex(x3+14,y3-5);
  vertex(x3+2,y3-5);
  endShape(CLOSE);
}
