public class Fire {
  // Object fields 
  private float xCoord; // x coordinate of the Fire
  private float yCoord; // y coordinate of the Fire
  private float diameter; // Diameter of the Fire
  private float speedX = 0;
  
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
  public float getSpeedX() {
    return speedX;
  }

  // Setters
  public void setDiameter(float diameter) {
    if ((diameter>=2) && (diameter<=10)) {
      this.diameter=diameter;
    } else {
      this.diameter = 10;
    }
  }
  
  public void setXCoord(float xCoord) {
    this.xCoord=xCoord;
  }
  
  public void setYCoord(float yCoord) {
    this.yCoord=yCoord;
  }

  public void setSpeedX (float speedX) {
    this.speedX=speedX;
  }

  // Add constructor, display and update
  public Fire(float diameter) {
    setDiameter(diameter);
    xCoord = hero.xCoord-15;
    yCoord = hero.yCoord;
    resetFire();
  }

  // Overloaded constructor
  public Fire(float diameter, float speedX) {
    setDiameter(diameter);
    xCoord = hero.xCoord-15;
    yCoord = hero.yCoord;
    setSpeedX(speedX);
    resetFire();
  }
  
 // Display and update methods
  public void display() {
    fill(120);
    noStroke();
    image(fireImage, xCoord-30, yCoord-50, diameter+70, diameter+70);
  }

  public void update() {
    xCoord = xCoord+speedX;
    if (shoot==false) {
      xCoord=hero.xCoord;
      yCoord=hero.yCoord;
    }

    if (xCoord > width) {
      resetFire();
    }
  }
  
 // Reset fire method
  public void resetFire()
  {
    xCoord = hero.xCoord;
    yCoord = hero.yCoord;
    speedX = 0;
    shoot = false;
  }
}
