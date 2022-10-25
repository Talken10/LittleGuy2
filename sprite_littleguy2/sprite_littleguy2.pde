Sprite s;

void setup()
{
  size (800,600);
  s = new LittleGuy();
  //s = new Sprite(); //needed before extention
  s.location.x = (-width/2)+100;
  s.location.y=(height/2)-100;
  s.velocity.x = 0;
  s.acceleration.x = 0;
  
String[] files = {"littleguy.svg", "littleguy2.svg"};
  s.addAnimation(files, 5);
  
  String[] files1 = {"littleguy1a.svg", "littleguy2a.svg"};
  s.addAnimation(files1, 5);

  String[] files2 = {"jump1.svg","jump2.svg"};
  s.addAnimation(files2, 10);
  
  String[] files3 = {"jump2.svg"};
  s.addAnimation(files3, 10);
  
 // s.currentAni = 0;
  
  
 // shape(s.ani.frames[0],0,0);
 // shape(s.ani.frames[1],0,0);
}

void draw()
{
 background(255);
 translate(width/2, height/2);
 s.update();
 s.check();
 s.display();
}

void keyPressed()
{
  if(key == 'w')
  {
 s.jump();
  }
  if (key == 'd')
  {
   s.run(); 
  }
}
