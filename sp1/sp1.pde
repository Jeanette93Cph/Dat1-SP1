// SP1 assignment



//new object
Ball firstBall = new Ball(color(0), random(width), random(height), 20);


ArrayList<Ball> balls = new ArrayList<>();


void setup()
{
  size(600, 600);
  background(255);
  balls.add(firstBall);
}



void draw()
{
  background(255);

  try
  {
     // here will every ball get through collisionWalls
     for(Ball ball : balls)
     {
      collisionWalls(ball);
     }
  }
  catch(Exception e)
  {
     // do nothing
  } 

  drawBalls();

}




//function so the balls will stay in the area and bounce around. 
void collisionWalls(Ball ball )
{
  try
  {
      if (ball.right() > width)
      {
       
        ball.speedX = -ball.speedX;
      }
    
      if (ball.left() < 0)
      {
        ball.speedX = -ball.speedX;
      }
    
      if (ball.bottom() > height)
      {
        ball.speedY = -ball.speedY;
      }
    
      if (ball.top() < 0)
      {
        ball.speedY = -ball.speedY;
    
        //calling method ballAdding
        ballAdding();
      }
  }
  catch (Exception e)
  {
      //do nothing
  }
}



// method to add a new ball every time a ball hits top side
void ballAdding()
{
  try
  {
    balls.add(new Ball(color(random(255), random(255), random(255)), random(width), random(height), 20));
  }
    catch (Exception e){
    // do nothing
  }
}



void drawBalls() {
  for (Ball b : balls)
  {
    b.drawingBall();
    b.move();
  }
}
