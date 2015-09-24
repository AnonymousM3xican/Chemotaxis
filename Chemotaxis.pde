
Bacteria [] sue;   
 void setup()   
 {     
 	size(500,500);
 	sue = new Bacteria[30];
 	for(int i = 0 ; i < sue.length;i++)
 	{
 		sue[i] = new Bacteria();	
 	}
 }   
 void draw()   
 {    
 	background(0);
 	
 	for (int i =0; i < sue.length ;i++)
 	{
 		sue[i].move();
 		sue[i].show();
 	} 
 	
 }  
 class Bacteria    
 {     
 	int myX,myY;
 	Bacteria()
 	{
 	myX=250;
 	myY=250;
 	}
 	
 	void move()
 	{
 		if(myX<mouseX)
 			myX+=(int)(Math.random()*5)-1;
 		else  
 			myX+= (int)(Math.random()*5)-3;
 		if (myY<mouseY)
 			myY+= (int)(Math.random()*5)-1;
 		else  
 			myY+= (int)(Math.random()*5)-3;
 	}
void show()
 	{
 		//fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 		noStroke();
 		fill(0,250,0);
 		ellipse(myX,myY,15,15);
 	} 
 }    