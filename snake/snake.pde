// 1. Follow the recipe instructions inside the Segment class.

// The Segment class will be used to represent each part of the moving snake.

class Segment {

  //2. Create x and y member variables to hold the location of each segment.
  int x;
  int y;

  // 3. Add a constructor with parameters to initialize each variable.
Segment(int x, int y){
  this.x = x;
  this.y = y;
}

  // 4. Add getter and setter methods for both the x and y member variables.
  void setx(int x){
    this.x=x;
  }
  void sety(int y){
    this.y=y;
  }
  int getx(){
    return this.x;
  }
  int gety(){
    return this.y;
  }
}


// 5. Create (but do not initialize) a Segment variable to hold the head of the Snake
Segment seg;


// 6. Create and initialize a String to hold the direction of your snake e.g. "up"
String direct = "up";


// 7. Create and initialize a variable to hold how many pieces of food the snake has eaten.
// give it a value of 1 to start.
int food = 1;


// 8. Create and initialize foodX and foodY variables to hold the location of the food.

// (Hint: use the random method to set both the x and y to random locations within the screen size (500 by 500).)

int foodX = ((int)random(50)*10);
int foodY = ((int)random(50)*10);



void setup() {

  // 9. Set the size of your sketch (500 by 500).

  size(500, 500);


  // 10. initialize your head to a new segment.
 
seg = new Segment(100,100);

  // 11. Use the frameRate(int rate) method to set the rate to 20.
  frameRate(20);
}


void draw() {

  background(0);


  //12. Call the manageTail, drawFood, drawSnake, move, and collision methods.
  manageTail();
  drawFood();
  drawSnake();
  move();
  collision();
}


// 13. Complete the drawFood method below. (Hint: each piece of food should be a 10 by 10 rectangle).

void drawFood() {
  fill(247,5,9);
  rect(50,50,10,10);
}


//14. Draw the snake head (use a 10 by 10 rectangle)

void drawSnake() {
  fill(85,247,5);
 
  rect(100,100,10,10);


  //test your code
}


// 15. Complete the move method below.

void move() {

  // 16. Using a switch statement, make your snake head move by 10 pixels in the correct direction.
  //This is an incomplete switch statement:
  
  if(direct.equals("up")){
    seg.sety(seg.gety()-10);
  }
  if(direct.equals("down")){
    seg.sety(seg.gety()+10);
  }
  if(direct.equals("left")){
    seg.setx(seg.getx()-10);
  }
  if(direct.equals("right")){
    seg.setx(seg.getx()+10);
  }
  


  // 17. Call the checkBoundaries method to make sure the snake head doesn't go off the screen.
  checkBoundaries();
}


// 18. Complete the keyPressed method below. Use if statements to set your direction variable depending on what key is pressed.

void keyPressed() {
  if(keyCode == UP){
    direct = "up";
  }
  if(keyCode == DOWN){
    direct = "down";
  }
  if(keyCode == LEFT){
    direct = "left";
  }
}



// 19. check if your head is out of bounds (teleport your snake head to the other side).

void checkBoundaries() {
}



//20. Make sure that the key for your current direction’s opposite doesn’t work(i.e. If you’re going up, down key shouldn’t work)



// 21. Complete the missing parts of the collision method below.

void collision() {

  // If the segment is colliding with a piece of food...
     // Increase the amount of food eaten and set foodX and foodY to new random locations.
}



/**
 
 ** Part 2: making the tail (the rest of the snake)
 
 **/

//  1. Create and initialize an ArrayList of Segments. (This will be your snake tail!)


// 2. Complete the missing parts of the manageTail method below and call it in the draw method.

void manageTail() {

  //Call the drawTail and checkTailCollision methods.

  // Add a new Segment to your ArrayList that has the same X and Y as the head of your snake.

  // To keep your tail the right length:
  // while the tail size is greater than the number of food pieces eaten, remove the first Segment in your tail.

}

void drawTail() {
    // Draw a 10 by 10 rectangle for each Segment in your snake ArrayList.
}


// 3. Complete the missing parts of the bodyCollision method below.

void checkTailCollision() {

  // If your head has the same location as one of your segments...

  // reset your food variable

  //Call this method at the beginning of your manageTail method.
}
