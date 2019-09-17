import controlP5.*;

ControlP5 cp5;

int myColor = color(0,25,0);

int c1,c2;

float n,n1;


void setup() {
  size(400,600);
  noStroke();
  cp5 = new ControlP5(this);
  
  cp5.addButton("1")
     .setValue(0)
     .setPosition(150,220)
     .setSize(100,35)
     .setColorBackground(250)
     ;
  
  cp5.addButton("2")
     .setValue(0)
     .setPosition(150,180)
     .setSize(100,35)
     .setColorBackground(250)
     ;
     
  cp5.addButton("3")
     .setPosition(150,140)
     .setSize(100,35)
     .setValue(0)
     .setColorBackground(250)
     ;
     
   cp5.addButton("4")
     .setPosition(150,100)
     .setSize(100,35)
     .setValue(0)
     .setColorBackground(250)
     ;

   cp5.addButton("<   |   >")
     .setPosition(240,300)
     .setSize(100,35)
     .setValue(0)
     .setColorBackground(250)
     ;
    
   cp5.addButton(">   |   <")
     .setPosition(100,300)
     .setSize(100,35)
     .setValue(0)
     .setColorBackground(250)
     ;
}

void draw() {
  background(myColor);
  myColor = color(192,192,192);
  //n += (1-n)* 0.1; 
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  println("test");
  theEvent.setColorBackground(250);
  n = 0;
}

/*// function colorA will receive changes from 
// controller with name colorA
public void colorA(int theValue) {
  println("a button event from colorA: "+theValue);
  c1 = c2;
  c2 = color(0,160,100);
}

public void colorB(int theValue) {
  println("a button event from colorB: "+theValue);
  c1 = c2;
  c2 = color(150,0,0);
}

public void colorC(int theValue) {
  println("a button event from colorC: "+theValue);
  c1 = c2;
  c2 = color(255,255,0);
}

public void play(int theValue) {
  println("a button event from buttonB: "+theValue);
  c1 = c2;
  c2 = color(0,0,0);
}*/
