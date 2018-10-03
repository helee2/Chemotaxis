 Bacteria[] colony;
 int numBacteria = 1;
 Bacteria bob;
 int x;
 int y;
 //declare bacteria variables here   
 void setup()   
 { 
   size(500,500);
   colony = new Bacteria[numBacteria];
   x = (int)(Math.random() * 500);
   y = (int)(Math.random() * 500);
   for (int i = 0; i <= numBacteria; i++)
   {
     bob = new Bacteria(x,y);
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 { 
   bob.move();
   bob.show();
   //move and show the bacteria   
 }  
 class Bacteria    
 {
   int Bacx,Bacy;
   Bacteria(int x, int y) 
   {
     Bacx = x;
     Bacy = y;
   }
   void move()
   {
     Bacx = Bacx + (int)(Math.random() * 7) - 3;
     if (Bacx <= 20)
       Bacx = Bacx + (int)(Math.random() * 3);
     else if (Bacx >= 480)
       Bacx = Bacx + (int)(Math.random() * 3);
     Bacy = Bacy + (int)(Math.random() * 7) - 3;
     if (Bacy <= 20)
       Bacy = Bacy + (int)(Math.random() * 3);
     else if (Bacy >= 480)
       Bacy = Bacy + (int)(Math.random() * 3);
   }
   void show()
   {
     background(0);
     ellipse(Bacx,Bacy,20,20);
   }
   //lots of java!   
 }    