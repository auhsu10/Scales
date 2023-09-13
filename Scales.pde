void setup() {
  size(500,500);
  fill(10,10,80);
  rect(0,0,500,500);
}

void draw() {
  for(int y2=500;y2>=-20;y2-=8) {
    for(int x2=0;x2<=480;x2+=20) {
       scale(x2,y2);
    }
  }
  for(int y3=500;y3>=-20;y3-=16) {
    for(int x3=8;x3<=500;x3+=20) {
       scale2(x3,y3);
    }
  }
  for(int y4=492;y4>=-20;y4-=16) {
    for(int x4=-2;x4<=500;x4+=20) {
       scale3(x4,y4);
    }
  }
}

void scale(int x2, int y2) {
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
  ellipse(x2+6,y2,3,3);
}

void scale2(int x3, int y3) {
  int mousecolor2 = mouseX/8;
  int mousecolor = mouseY/4;
  fill(mousecolor,mousecolor2,(int)(Math.random()*255));
  stroke(0);
  strokeWeight(1);
  beginShape();
  vertex(x3,y3);
  vertex(x3+4,y3+7);
  vertex(x3+12,y3+7);
  vertex(x3+16,y3);
  vertex(x3+14,y3-7);
  vertex(x3+2,y3-7);
  endShape(CLOSE);
  ellipse(x3+8,y3,4,4);
}

void scale3(int x4, int y4) {
  int mousecolor2 = mouseX/8;
  int mousecolor = mouseY/4;
  fill(mousecolor,mousecolor2,(int)(Math.random()*255));
  stroke(0);
  strokeWeight(1);
  beginShape();
  vertex(x4,y4);
  vertex(x4+4,y4+5);
  vertex(x4+12,y4+5);
  vertex(x4+16,y4);
  vertex(x4+14,y4-5);
  vertex(x4+2,y4-5);
  endShape(CLOSE);
  ellipse(x4+8,y4,4,4);
}
