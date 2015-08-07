int imageIndex=0;
float xPosition;
boolean faceLeft=true;

PImage[] images1=new PImage[10];
PImage[] images2=new PImage[10];

void setup(){
  size(1000,350);
  for ( int i = 0; i< 10; i++ ){
  images1[i]=loadImage(i+".png");
  images2[i]=loadImage("f"+i+".png");
 }
frameRate(10);
}

void draw(){
  background(255);
  
  if(faceLeft=true){
  image(images1[imageIndex],width/2+xPosition+300,0);
  imageIndex=(imageIndex+1)% 10;
}
  if(faceLeft=false){ 
  image(images2[imageIndex],width/2+xPosition,0);
  imageIndex=(imageIndex+1)% 10;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      faceLeft=true;
      xPosition-=30;
    }else if(keyCode == RIGHT){
      faceLeft=false;
      xPosition+=30;
    }
    println(faceLeft);
  }
}
