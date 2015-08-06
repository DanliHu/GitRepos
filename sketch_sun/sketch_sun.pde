int flowerSize=130;
color bg=#94fff8;
color st=#ffd15c;
color fl=#ffad5c;
String flower1;
PFont hello, good;

void setup(){
  background(bg);
  size(300,500);
  noStroke();
  hello=loadFont("Avenir-Light-48.vlw");
  good=loadFont("Avenir-LightOblique-48.vlw");
}

void flower1(){
  background(bg); 
  pushMatrix();
  translate(width/2, height/2);
  rotate(frameCount / 400.0);
  fill(st);
  star(0, 0, 100, 80, 40); 
  popMatrix(); 
  
  fill(fl);
  ellipse(width/2,height/2,flowerSize,flowerSize);
  fill(#ff662e);
  arc(width/2,height/2+13,100,80,0,PI);
  
  fill(#895334);
  ellipse(width/2-30,height/2-10,10,10);
  ellipse(width/2+30,height/2-10,10,10);
  
  
  fill(255);
  textFont(good,20);
  textAlign(CENTER);
  text("Have",width/2,height/2+160);
    text("A",width/2,height/2+180);
      text("Good Day!",width/2,height/2+200);
      
}

void draw(){;
fill(fl);
ellipse(width/2,height/2,flowerSize,flowerSize);
if(dist(width/2,height/2,mouseX,mouseY)<=100){
    flower1();
  }else{
  background(bg);
  ellipse(width/2,height/2,flowerSize,flowerSize);
  fill(255);
  textFont(hello,20);
  textAlign(CENTER);
  text("What's",width/2,height/2);
   text("Up?",width/2,height/2+20);
}
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

