//Class for both circle and rectangle
class Shape{

  float SizeX, SizeY, x,y, SpeedX, SpeedY;
  color Color;
  
  //Constructor One
  Shape(float SizeX , float SizeY , float x , float y , float SpeedX , float SpeedY, color Color){
  this.SizeX=SizeX;
  this.SizeY=SizeY;
  this.x=x;
  this.y=y;
  this.SpeedX=SpeedX;
  this.SpeedY=SpeedY;
  this.Color=Color;
  }

  //Constructor Two
  Shape(float Size , float x , float y , float SpeedX , float SpeedY, color Color){
  this.SizeX=Size;
  this.x=x;
  this.y=y;
  this.SpeedX=SpeedX;
  this.SpeedY=SpeedY;
  this.Color=Color;
  }

  //Move function
  void move() {
    x += SpeedX;
    if (x < 0+(SizeX/2) || x > width-(SizeX/2)) {
      SpeedX *= -1;
    }

    y += SpeedY;
    if (y < 0+(SizeY/2) || y > height-(SizeY/2)) {
      SpeedY *= -1;
    }
  }
  
  //Display function
  void display(){

    if(Switch)
   {
   noStroke();
   fill(Color);
   rectMode(CENTER);
   rect(x,y,SizeX,SizeY);}
   
   else
   {
   noStroke();
   fill(Color);
   ellipse(x,y,SizeX,SizeY);}
  }

  //Function that calls the object to both move and be drawn.
  void Update(){
  move();
  display();
  }

  //Function to display "click anywhere" text.
  void Text(){
  fill(textcolor);
  textAlign(CENTER);
  text(text,width/2,textSize);
  }

}
