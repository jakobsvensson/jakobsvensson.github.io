/* @pjs preload="cover4.png"; */

float t = 0;
float size1 = 5;
float size2 = 5;

PGraphics cover;
PGraphics letters;
PGraphics art;
PGraphics artline;

PImage coverimg;

int timer;
float r =30;
  float g =170;
  float b =140;

void setup()  {
  background(255);
  size (700, 700);
  cover = createGraphics (700, 700);
  letters = createGraphics (700, 700);
  art = createGraphics (700, 700);
    artline = createGraphics (700, 700);
  
  coverimg = loadImage ("cover4.png");
  
  
  PFont font;
  font = createFont("InterstatePlus.ttf", 120);
  textFont(font);
  
  textAlign(CENTER);
   smooth();
   
   frameRate(160);
   

  
//blendMode(MULTIPLY);
  
  
}

void draw()  {
  
  
 t = t + 0.001;
float x = noise(t);
float y = noise(t);
x = map(x, 0,1,0, width);
y = map(y, 0,1,0, height);
float x2 = noise(t/2);
float y2 = noise(t/4);
float c1 = noise(t*15);
float c2 = noise(t*5);
float c3 = noise(t*15);
float c4 = noise(t*5);
x2 = map(x2, 0,1,0, width);
y2 = map(y2, 0,1,0, height);
c1 = map(c1, 0,1,0, width);
c2 = map(c2, 0,1,0, height);
c3 = map(c3, 0,1,0, width);
c4 = map(c4, 0,1,0, height);
  

  


 artline.beginDraw ();
stroke (r,g,b,250);
noFill();
bezier(x+sin(x/2)*10, y, c1, c2, c3, c4, x2+sin(x2/2)*10, y2+cos(y2/2)*10);

//line(x+sin(x/2)*10, y +cos(y/2)*10+sin(x/2)*100, x2, y2);
//bezier(x+sin(x/2)*10, y, c1, c2, c3, c4, x2+sin(x2/2)*10, y2+cos(y2/2)*10);


//fill (random(10,200), random (20,230), random (10,80));
//fill (random (10,20));
//ellipse(x, y, size1, size2);
//ellipse(x+sin(x/2)*10+cos(x/2)*100, y +cos(y/2)*10+sin(x/2)*100, 5,5);
artline.endDraw();
 image(artline,0,0);
 
 
 
  if (millis() - timer >= 8000) {
    art.beginDraw ();
    
noStroke();
fill(255,30);
 rect(0,0,width,height);
filter(INVERT);
  art.endDraw();
 image(art,0,0);
 t = t-3;
 r = random(0,40);
 g = random(50,160);
 b = random(0,120);
    timer = millis();
    }

 
//letters.beginDraw();
  //fill (255,255);
    
  // text("Jakob", width/2, height/2);
  //letters.endDraw();

  //image (letters, 0, 0);
  
cover.beginDraw();

   image(coverimg, 0,0);
   cover.endDraw();
   image(cover,0,0);
}
