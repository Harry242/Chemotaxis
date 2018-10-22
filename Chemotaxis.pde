 Bacteria[] dot;
 void setup()   
 {     
  size(500,500);
  dot=new Bacteria[1000];
  for(int i=0; i<dot.length;i++)
  {
    dot[i]=new Bacteria();
  }
  //initialize bacteria variables here   
 }   
 void draw()   
 {
  background(0);
  for(int i=0;i<dot.length;i++)
  {
    dot[i].show();
    dot[i].move();
  }
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	float myX,myY;
  int col,col2,col1;
  Bacteria()
  {
    myX=250;
    myY=250;
    col=255;
    col1=255;
    col2=255;
  }
   void show()
   {
     fill(col,col1,col2);
     ellipse(myX,myY,10,10);
   }
   void move()
   {
     col=col+(int)(Math.random()*100)-49;
     col1=col1+(int)(Math.random()*100)-49;
     col2=col2+(int)(Math.random()*100)-49;
     if(mouseX>myX)
       myX=(float)(Math.random()*8)+myX;
     else
       myX=(float)(Math.random()*-8)+myX;
     if(mouseY>myY)
       myY=(float)(Math.random()*8)+myY;
     else
       myY=(float)(Math.random()*-8)+myY;
   }
  //lots of java!   
 }    
