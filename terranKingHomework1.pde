import controlP5.*;
boolean[] isSelected = new boolean[6];
ControlP5 cp5;

int myColor = color(0,25,0);

int c1,c2;
Button b1, b2, b3, b4, b5, b6;
int curFloor = 1;

float n,n1;
Textarea myTextareaA, ta1,ta2,ta3,ta4,ta5,ta6,d1,d2;

void setup() {
  size(800,800);
  noStroke();
  cp5 = new ControlP5(this);
  
  b1 = cp5.addButton("Floor1")
     .setValue(1)
     .setPosition(150,450)
     .setSize(200,100)
     .setColorBackground(250)
     .setCaptionLabel("1")
     .setFont(createFont("arial",40))
     ;
  
  b2 = cp5.addButton("Floor2")
     .setValue(2)
     .setPosition(450,450)
     .setSize(200,100)
     .setColorBackground(250)
     .setCaptionLabel("2")
     .setFont(createFont("arial",40))
     ;
     
  b3 = cp5.addButton("Floor3")
     .setPosition(150,300)
     .setSize(200,100)
     .setValue(3)
     .setColorBackground(250)
     .setCaptionLabel("3")
     .setFont(createFont("arial",40))
     ;
     
   b4 = cp5.addButton("Floor4")
     .setPosition(450,300)
     .setSize(200,100)
     .setValue(4)
     .setColorBackground(250)
     .setCaptionLabel("4")
     .setFont(createFont("arial",40))
     ;
     
   b5 = cp5.addButton("Floor5")
     .setPosition(150,150)
     .setSize(200,100)
     .setValue(4)
     .setColorBackground(250)
     .setCaptionLabel("5")
     .setFont(createFont("arial",40))
     ;
     
   b6 = cp5.addButton("Floor6")
     .setPosition(450,150)
     .setSize(200,100)
     .setValue(4)
     .setColorBackground(250)
     .setCaptionLabel("6")
     .setFont(createFont("arial",40))
     ;

   cp5.addButton("CloseDoor")
     .setPosition(150,600)
     .setSize(200,100)
     .setValue(0)
     .setColorBackground(250)
     .setCaptionLabel(">  |  <")
     .setFont(createFont("arial",40))
     ;
    
   cp5.addButton("OpenDoor")
     .setPosition(450,600)
     .setSize(200,100)
     .setValue(0)
     .setColorBackground(250)
     .setCaptionLabel("<  |  >")
     .setFont(createFont("arial",40))
     ;
     
  myTextareaA = cp5.addTextarea("txt")
                  .setPosition(380,30)
                  .setSize(43,60)
                  .setFont(createFont("arial",50))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("1");
                  
   d1           =  cp5.addTextarea("d1")
                  .setPosition(0,600)
                  .setSize(150,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\nClose \n\nDoor");
                  
   d2           =  cp5.addTextarea("d2")
                  .setPosition(650,600)
                  .setSize(150,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\nOpen \n\nDoor");
                  
   ta1           = cp5.addTextarea("1")
                  .setPosition(0,450)
                  .setSize(150,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\nPhantasm \n\nProductions");
                  
   ta5           = cp5.addTextarea("5")
                  .setPosition(0,150)
                  .setSize(150,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\nTucan \n\nSystems");
                  
   ta3           = cp5.addTextarea("3")
                  .setPosition(0,300)
                  .setSize(150,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\nHammer\n\nElectronics");
       
   ta2           = cp5.addTextarea("2")
                  .setPosition(650,450)
                  .setSize(200,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\nCapitol \n\nInvestments");

  ta4           = cp5.addTextarea("4")
                  .setPosition(650,300)
                  .setSize(200,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\n\nWells Fargo");

  ta6           = cp5.addTextarea("6")
                  .setPosition(650,150)
                  .setSize(200,100)
                  .setFont(createFont("arial",25))
                  .setLineHeight(12)
                  .setColor(color(0))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100))
                  .setText("\n\n\nParks Inc.");
}

void draw() {
  background(myColor);
  myColor = color(250,250,250);
  //n += (1-n)* 0.1; 
}

/*public void controlEvent() {
  n = 0;
}*/

public void  Floor1(){
  floorCount(1);
}

public void Floor2(){
  
  floorCount(2);
}


public void Floor3(){
  floorCount(3);
}

public void Floor4(){
  floorCount(4);
}
public void Floor5(){
  floorCount(5);
}

public void Floor6(){
  floorCount(6);
}

public void CloseDoor(){
   myTextareaA.setText("> | <");
   timeOut();
   myTextareaA.setText(str(curFloor));
}

public void OpenDoor(){
   myTextareaA.setText("< | >");
   timeOut();
   myTextareaA.setText(str(curFloor));
}

public void floorCount(int nextFloor){
  if(curFloor == nextFloor){
  }
  else if(curFloor > nextFloor){
    while(curFloor > nextFloor){
      timeOut();
      myTextareaA.setText(str(curFloor));
      curFloor--;
      myTextareaA.setText(str(curFloor));
    }
  }
  else if(curFloor < nextFloor){
    while(curFloor < nextFloor){
      timeOut();
      myTextareaA.setText(str(curFloor));
      curFloor++;
      myTextareaA.setText(str(curFloor));
    }
  }
  
}

public void timeOut(){
  try        
     {
        Thread.sleep(1000);
     } 
     catch(InterruptedException ex) 
     {
        Thread.currentThread().interrupt();
     }
}
