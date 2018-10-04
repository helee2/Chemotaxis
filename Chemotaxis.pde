 Bacteria[] colony;
 Bacteria bob;
 //declare bacteria variables here   
 void setup()   
 { 
   size(500,500);
   colony = new Bacteria[3];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 { 
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
   goal();
   //move and show the bacteria   
 }  
 class Bacteria    
 {
   int Bacx,Bacy,BacColor;
   Bacteria() 
   {
     Bacx = (int)(Math.random() * 500);
     Bacy = (int)(Math.random() * 500);
     BacColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
   }
   void move()
   {
     Bacx = Bacx + (int)(Math.random() * 7) - 3;
     Bacy = Bacy + (int)(Math.random() * 7) - 3;
     if (Bacx <= 20)
       Bacx = Bacx + (int)(Math.random() * 3);
     if (Bacx >= 480)
       Bacx = Bacx + (int)(Math.random() * 3) - 3;
     if (Bacy <= 20)
       Bacy = Bacy + (int)(Math.random() * 3);
     if (Bacy >= 480)
       Bacy = Bacy + (int)(Math.random() * 3) - 3;
   }
   void show()
   {
     background(0);
     fill(BacColor);
     ellipse(Bacx,Bacy,20,20);
   }
   //lots of java!   
 }    
 
 void goal()
 {
   ellipse((int)(Math.random() * 400) + 50,(int)(Math.random() * 400) + 50, 50, 50); 
 }
 