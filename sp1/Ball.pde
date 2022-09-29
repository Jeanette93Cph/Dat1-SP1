class Ball
{
    
    color c; 
    float xpos; 
    float ypos; 
    float speedY = 4;
    float speedX = 3;
    int diameter; 

  
  
    //constructor
    Ball(color tempc, float tempxpos, float tempypos, int tempDiameter)
    {
        c = tempc; 
        xpos = tempxpos; 
        ypos = tempypos; 
        diameter = tempDiameter;
      
    }  
    
    
    void drawingBall()
    {
         fill(c);
         ellipse(xpos,ypos,diameter,diameter);
    }
    
    
    void move()
    {
         xpos = xpos + speedX; 
         ypos = ypos + speedY;          
    } 
    
    
    //functions that are a part of collisionWalls() 
    float left()
    {
         return xpos-diameter/2;
    }  
    
    
    float right()
    { 
         return xpos+diameter/2; 
    } 
    
    
    float top()
    { 
         return ypos-diameter/2; 
    } 
    
    float bottom()
    { 
         return ypos+diameter/2; 
    } 
    
    
  
}
