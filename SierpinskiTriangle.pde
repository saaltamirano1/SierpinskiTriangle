public void setup()
{
  size(500, 500);
  background(247); //white-ish background
}

int size = 200;  //veriables for length, and x,y so that i can
int X = 150;     //alter them when in mousePressed function
int Y = 300;
int Color = color(25,25,25);   //same thing with color and stroke
int Stroke = color(255,0,166);

public void draw()
{
  stroke(20);  
 sierpinski(X,Y,size);  //gets the values

}
public void mousePressed()//optional
{
  background(247);  //eliminates the previous shape
   Stroke = color(15,230,240);  
   Color = color(44,42,42);
   X = 100;      //puts the variables to use
   Y = 350;
   size = 300;
   
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=20){
    stroke(Stroke);
    fill(Color);
    triangle(x, y, x+len/2, y-len, x+len,y);
  }else{
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+(len/4),y-(len/2),len/2);
  }
}
