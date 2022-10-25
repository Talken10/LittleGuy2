class LittleGuy extends Sprite
{
  boolean isJump = false;
   boolean isRun = false;
  LittleGuy()
  {
   super(); 
  } //end LittleGuy
  
  void jump()
  {
    this.velocity.y = -8;
    this.acceleration.y = 0.1;
    this.isJump=true;
  }//end void jump
  
  void run()
  {
   this.velocity.x = 4;
   this.acceleration.x = 0;
   this.location.x = (-width/2)+100;
   this.isRun = true;
  }
  void check()
  {
      
    //float actualY = screenY(this.location.x, this.location.y);
    if(location.y > (height/2)-200)
    {
     this.acceleration.y = 0;
     this.velocity.y = 0;
     this.location.y =(height/2)-200;
     this.isJump = false;
    }
    
    if(this.isJump)
    {
      if(this.velocity.y < 0)
      {
        this.currentAni=2; 
      }
     else
     {
       this.currentAni=3;
     }
   
    }
    else
    {
      this.currentAni=0;
    }
 
    if (this.location.x > ((-width/2)+100))
    {
     this.acceleration.y = 0;
     this.velocity.x = 0;
     this.location.x = this.location.x +5;
     this.isRun = false;
      if (this.isRun)
      {
         this.currentAni=1; 
      }
      else
      {
          this.currentAni=0;
      }
    }//isRun
  }

  
}//Little Guy class
