 Bacteria[] colony;
 Bacteria bob;
 int targetx = (int)(Math.random() * 400) + 50;
 int targety = (int)(Math.random() * 400) + 50;
 int targetColor = color((int)(Math.random() * 400) + 50,(int)(Math.random() * 400) + 50,(int)(Math.random() * 400) + 50);
 void setup()
 { 
   size(500,500);
   colony = new Bacteria[10];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   } 
 }   
 void draw()   
 { 
   background(0);
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
   colony[0].goal();
 }  
 class Bacteria    
 {
   int Bacx,Bacy,BacColor,targetx,targety,targetColor;
   Bacteria() 
   {
     Bacx = (int)(Math.random() * 500);
     Bacy = (int)(Math.random() * 500);
     BacColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
     targetx = (int)(Math.random() * 300) + 100;
     targety = (int)(Math.random() * 300) + 100;
     targetColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
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
     fill(BacColor);
     ellipse(Bacx,Bacy,20,20);
   }
   void goal()
   {
     fill(targetColor);
     ellipse(targetx,targety, 100, 100);
   }
 }    
 
