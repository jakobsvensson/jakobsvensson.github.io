
int[] numberlistX = new int[10];
int[] numberlistY = new int[10];
int numberOfPoints = int(random(3, 10));

float t = 0;
float size1 = 5;
float size2 = 5;

float r =30;
float g =170;
float b =140;
  
float r2 =160;
float g2 =30;
float b2 =40;

float r3 =40;
float g3 =40;
float b3 =40;

float r4 =255;
float g4 =255;
float b4 =255;

float r5 =40;
float g5 =40;
float b5 =40;

PGraphics art;

      int x = int(random(80, 630));
      int y = int(random(120, 670));
  


void setup (){

  size(750,750);
  smooth();

   art = createGraphics (550, 550);
frameRate(1);

for (int i = 0; i < 10; i ++){
      x = int(random(80, 630));
      y = int(random(120, 670));
       
         numberlistX[i] = x;
         numberlistY[i] = y;
      }

}

void draw (){
  
  int timer = second();
  background(255);
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  String predate = "Right now the the time is ";
  
    
  String date =  str(h) + ":" + str(m) + ":" + str(s) + ".";
  if (m < 10){
    date = str(h) + ":" + "0" + str(m) + ":" + str(s) + ".";
  }
  if (s < 10){
    date = str(h) + ":" + str(m) + ":" + "0" + str(s) + ".";
  }
  String countdown = "Next image in " + (60 - s) + " seconds.";
  

  textSize(36);
  fill(0, 0, 0);
  text("I draw a picture every minute.", 80, 60);
  textSize(16);
  fill(0, 0, 0);
  text(predate, 80, 90);
  fill((r5), (g5), (b5));
  text(date, 270, 90);
  fill(0, 0, 0);
  text(countdown, 350, 90);
  text("I hope you like it. \nClick the image to enter my portfolio and see more nonsense.", 
        80, 715);

  fill(255, 0);
  stroke(0);
  strokeWeight(2);
  rect(80, 120, 550, 550);
  //rect(80, 120, x, y);
  

  shape1(numberlistX, numberlistY);

  if (timer == 0) {
      for (int i = 0; i < 10; i ++){
      x = int(random(80, 630));
      y = int(random(120, 670));
       
         numberlistX[i] = x;
         numberlistY[i] = y;
         
          r = random(0,40);
          g = random(50,160);
          b = random(0,120);
          
          r2 = random(0,40);
          g2 = random(50,160);
          b2 = random(0,120);
          
          r3 = random(0,40);
          g3 = random(50,160);
          b3 = random(0,120);
          
          r4 = random(0,230);
          g4 = random(20,230);
          b4 = random(0,240);

          r5 = random(0,230);
          g5 = random(20,230);
          b5 = random(0,240);
          
          numberOfPoints = int(random(3, 10));
      }
    }


}

void shape1(int[] x, int[] y) {
  
    
    art.beginDraw();
    art.background(r4,g4,b4);
      
      art.noStroke();
      if (numberOfPoints < 6){
        art.fill(r3,g3,b3);
        art.triangle(x[7],y[7],x[6],y[6],x[8],y[8]);
      }
      art.fill(r5,g5,b5);
      art.rect(x[9],y[9],1000,1000);
      
      art.fill(r3,g3,b3);
      art.triangle(x[1],y[1],x[0],y[0],x[3],y[3]);
      

      art.beginShape();
      art.fill(r,g,b);
      art.noStroke();
    for (int i=0; i < x.length; i++) {      //x constrained points
      
    for (int k=0; k < numberOfPoints; k++){
         art.vertex(x[i],y[i]);
      }
    }
    


      art.endShape();
    
    art.fill(r2,g2,b2);
    art.stroke(0);
    art.strokeWeight(2);
    art.ellipse(x[0], y[1], 30, 30);
    
    art.fill(r3,g3,b3);
    art.ellipse(x[1], y[1], 10, 10);
    art.ellipse(x[8], y[6], 80, 80);
    
      
      //art.strokeWeight(8);
      //art.stroke(r5,g5,b5);
      //art.strokeJoin(MITER);
      //art.strokeCap(SQUARE);
      //art.line(x[4],y[8], x[0], y[9]);
    art.endDraw();
    image(art,80,120);
  

  
  
//   t = t + 0.001;
//float x = noise(t);
//float y = noise(t);
//x = map(x, 0,1,0, width);
//y = map(y, 0,1,0, height);
//float x2 = noise(t/2);
//float y2 = noise(t/4);
//float c1 = noise(t*15);
//float c2 = noise(t*5);
//float c3 = noise(t*15);
//float c4 = noise(t*5);
//x2 = map(x2, 0,1,0, width);
//y2 = map(y2, 0,1,0, height);
//c1 = map(c1, 0,1,0, width);
//c2 = map(c2, 0,1,0, height);
//c3 = map(c3, 0,1,0, width);
//c4 = map(c4, 0,1,0, height);
  
  
//stroke (r,g,b,250);
//fill(r,g,b,250);
//bezier(x+sin(x/2)*10, y, c1, c2, c3, c4, x2+sin(x2/2)*10, y2+cos(y2/2)*10);
  
}
