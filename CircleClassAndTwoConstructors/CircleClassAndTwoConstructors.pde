//Switch to toggle rectangle or circle
Boolean Switch = false;

//Shape values.
float YSize = 50;
float XSize = 50;
float x = random(width) + (XSize);
float y = random(width) + (YSize);
float YSpeed = random(-8,8);
float XSpeed = random(-8,8);
color shapecolor = #999999;

//Text variables
color textcolor = #3B3B3B;
String text = "Click Anywhere";
int textSize = 60;

Shape shape;

//Setup
void setup(){
  size(500,500);

  //Switch Conditional Method for the creation of the shape.
  if(Switch)
  //circle
  {shape = new Shape(XSize,x,y,XSpeed,Y,shapecolor);}

  else
  {shape = new Shape(XSize,YSize,x,y,XSpeed,YSpeed,shapecolor);}
}
  

//Draw
void draw(){
  background(#ffffff);
  shape.Update();
  shape.Text();
}

//Click to toggle switch.
void mousePressed()
{
  if(Switch){
  Switch = false;}
  
  else{
  Switch = true;}
}
