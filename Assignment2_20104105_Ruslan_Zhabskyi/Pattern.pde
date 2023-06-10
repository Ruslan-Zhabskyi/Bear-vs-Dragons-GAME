public class Pattern {
  // Object fields 
  private float xCoord; // x coordinate of the Pattern
  private float yCoord; // y coordinate of the Pattern
  private float diameter; // Diameter of the Pattern
  private float diameterSquareOne; // Diameter of the Pattern for different objects in the loop
  private float diameterSquareTwo; // Diameter of the Pattern for different objects in the loop

  // Getters
  public float getXCoord() {
    return xCoord;
  }
  public float getYCoord() {
    return yCoord;
  }
  public float getDiameter() {
    return diameter;
  }
  public float getDiameterSquareOne() {
    return diameterSquareOne;
  }

  public float getDiameterSquareTwo() {
    return diameterSquareTwo;
  }

  // Setters
  public void setDiameter(float diameter) {
    if ((diameter>=1) && (diameter<=20)) {
      this.diameter=diameter;
    } else {
      this.diameter = 10;
    }
  }

  public void setDiameterSquareOne(float setDiameterSquareOne) {
    if ((setDiameterSquareOne>=1) && (setDiameterSquareOne<=20)) {
      this.diameterSquareOne=diameterSquareOne;
    } else {
      this.diameterSquareOne = 10;
    }
  }

  public void setDiameterSquareTwo(float setDiameterSquareTwo) {
    if ((setDiameterSquareTwo>=1) && (setDiameterSquareTwo<=20)) {
      this.diameterSquareTwo=diameterSquareTwo;
    } else {
      this.diameterSquareTwo = 10;
    }
  }

  public void setXCoord(float xCoord) {
    this.xCoord=xCoord;
  }
  public void setYCoord(float yCoord) {
    this.yCoord=yCoord;
  }
  
  //Constructor of the Pattern
  public Pattern(float xCoord, float yCoord, float diameter) {
    setDiameter(diameter);
    setXCoord(xCoord);
    setYCoord(yCoord);
  }
  
  //Overloaded constructor
  public Pattern(float xCoord, float yCoord, float diameterSquareOne, float diameterSquareTwo) {
    setDiameterSquareOne(diameterSquareOne);
    setDiameterSquareTwo(diameterSquareTwo);
    setXCoord(xCoord);
    setYCoord(yCoord);
  }

  // Display and update methods
  public void display() {

    for (int i=10; i < 15; i++)
    {
      for (int j=0; j < 40; j++)
      {
        if ((i + j + 1) % 2 == 0) {
          fill(255);
          // if (i + j + 1) % 2 == 0, draw white squares
          square(xCoord*j, yCoord*i, random(diameterSquareOne)-i); // 40, 2
        } else
        {
          fill(#3370A6);
          // else, draw blue squares
          square(xCoord*j, yCoord*i, random(diameterSquareTwo)-i); //40, 1
        }
      }
    }
  }
  
  private void update() {
    diameterSquareOne = random(2);
    diameterSquareTwo = random(1);
  }
}
