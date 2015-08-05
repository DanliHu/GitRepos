void setup(){
  size(500,500);
  background(255);
}

void draw(){
  stroke(0);
  strokeWeight(2);
  //face blue
  fill(0,200,255);
  ellipse(width/2,height/2,300,290);
  //face white
  fill(255);
  ellipse(width/2,(height/2)+30,270,220);
  line(190,210,150,200);
  line(188,220,140,220);
  line(190,230,145,240);
  line(310,210,350,200);
  line(312,220,360,220);
  line(310,230,355,240);
  //eye
  fill(255);
  ellipse((width/2)-35,(height/2)-80,70,80);
  ellipse((width/2)+35,(height/2)-80,70,80);
  //mouth
  line(width/2,height/2-10,width/2,height/2+110);
  noFill();
  arc(width/2,height/2,240,220,0,PI);
  //smile mouth
  if (mousePressed){
    fill(255,0,0);
    arc(width/2,height/2,240,220,0,PI);
    line(width/2-120,height/2,width/2+120,height/2);
    fill(255,140,0);
    ellipse(width/2,(height/2)+80,100,50);
  }
   //nose
  fill(255,0,0);
  ellipse(width/2,(height/2)-30,50,50);
  fill(255);
  noStroke();
  ellipse(width/2-10,(height/2)-40,10,10);
  //bell
  fill(255,0,0);
  stroke(0);
  rect(170,height/2+130,160,20);
  fill(255,200,0);
  ellipse(width/2,(height/2)+165,60,60);
  rect(218,height/2+155,65,10);
  line(width/2,height/2+180,width/2,height/2+194);
  fill(220,130,0);
  ellipse(width/2,height/2+180,10,10);
  //eye
  if(mouseX<width/2){
  fill(0);
  ellipse((width/2)-55,(height/2)-80,25,30);
  ellipse((width/2)+15,(height/2)-80,25,30);
  fill(255);
  noStroke();
  ellipse((width/2)-63,(height/2)-87,10,10);
  ellipse((width/2)+8,(height/2)-87,10,10);
  }else{
  fill(0);
  ellipse((width/2)+55,(height/2)-80,25,30);
  ellipse((width/2)-15,(height/2)-80,25,30);
  fill(255);
  noStroke();
  ellipse((width/2)+63,(height/2)-87,10,10);
  ellipse((width/2)-8,(height/2)-87,10,10);
  }
  if (mousePressed){
  //smile eye
  fill(255);
  stroke(0);
  ellipse((width/2)-35,(height/2)-80,70,80);
  ellipse((width/2)+35,(height/2)-80,70,80);
  noFill();
  arc((width/2)-35,(height/2)-65,35,80,PI,TWO_PI);
  arc((width/2)+35,(height/2)-65,35,80,PI,TWO_PI);
  //nose
  fill(255,0,0);
  ellipse(width/2,(height/2)-30,50,50);
  fill(255);
  noStroke();
  ellipse(width/2-10,(height/2)-40,10,10);
  }
}
