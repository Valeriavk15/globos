class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   c = color (random(128), random(128), random(128));
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill (c);
      ellipse(x,y,100,190);
      image(cara,x-10,y-15,50,50);
  }
  
}

ArrayList<Globo> globos;
PImage cara;



void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>(); 
  cara=loadImage("cara.png");
}

void draw()
{
  background(190,137,155);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
