import controlP5.*;
boolean[] isSelected = new boolean[6];
ControlP5 cp5;

int myColor = color(0,25,0);

int c1,c2;
Button b1, b2, b3, b4, b5, b6;

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

   cp5.addButton("<  |  >")
     .setPosition(150,600)
     .setSize(200,100)
     .setValue(0)
     .setColorBackground(250)
     .setFont(createFont("arial",40))
     ;
    
   cp5.addButton(">  |  <")
     .setPosition(450,600)
     .setSize(200,100)
     .setValue(0)
     .setColorBackground(250)
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

public void controlEvent(ControlEvent theEvent) {
 // println(theEvent.getController().getName());
  //text(theEvent.getController().getName(),100,300);
 // println("test");
//  theEvent.setColorBackground(250);
  n = 0;
}

public void  Floor1(){

   /*b1.setColorBackground(color(0,255,0));
   try        
   {
      Thread.sleep(1000);
   } 
   catch(InterruptedException ex) 
   {
      Thread.currentThread().interrupt();
   }
   b1.setColorBackground(250);*/
   myTextareaA.setText("1");
}

public void Floor2(){
 /*  b1.setColorBackground(color(0,255,0));
   try        
   {
      Thread.sleep(1000);
   } 
   catch(InterruptedException ex) 
   {
      Thread.currentThread().interrupt();
   }
   b1.setColorBackground(250);*/
   myTextareaA.setText("2");
}


public void Floor3(){
  /* b1.setColorBackground(color(0,255,0));
   try        
   {
      Thread.sleep(1000);
   } 
   catch(InterruptedException ex) 
   {
      Thread.currentThread().interrupt();
   }
   b1.setColorBackground(250);*/
   myTextareaA.setText("3");
}

public void Floor4(){
 /*  b1.setColorBackground(color(0,255,0));
   try        
   {
      Thread.sleep(1000);
   } 
   catch(InterruptedException ex) 
   {
      Thread.currentThread().interrupt();
   }
   b1.setColorBackground(250);*/
   myTextareaA.setText("4");
}
public void Floor5(){
   myTextareaA.setText("5");
}

public void Floor6(){
   myTextareaA.setText("6");
}
/*void mousePressed() {
 /* for (int i = 0; i < 6; i++) {
    if (mouseY > height-30 && mouseY < height-10) {
      int left = i*70+i*10+10;
      if (mouseX > left && mouseX < left+70) {
        for (int j = 0; j < 6; j++) isSelected[j] = false;
        isSelected[i] = true;
        break;
      }
    }
  }*/
 /* if(controlP5.Controller.getId() == 1){
    myTextareaA.setText("1");
  }
  else if(controlP5.Button.getBooleanValue() == 2){
  }
  
}*/
