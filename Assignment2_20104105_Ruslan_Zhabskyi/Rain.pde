public class Rain {
  // Object fields 
  private float xCoord; // x coordinate of the Rain
  private float yCoord; // y coordinate of the Rain
  private float diameter; // Diameter of the Rain
  private float speedY = 2;

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

  public void setSpeedY (float speedY) {
    this.speedY=speedY;
  }

  // Constructor
  
  public Rain (float diameter) {
    setDiameter(diameter);
    xCoord = random(20, width*.7);
    yCoord = 0;
  }

  // Overloded constructor 1
  public Rain (float xCoord, float yCoord, float diameter) {
    setDiameter(diameter);
    setXCoord(xCoord);
    setYCoord(yCoord);
  }
  
  // Overloded constructor 2
  public Rain (float diameter, float speedY) {

    setDiameter(diameter);
    xCoord = random(20, width*.7);
    yCoord = 0;
    setSpeedY(speedY);
  }

 // Display and update methods
  public void display() {
    fill(250);
    noStroke();
    ellipse(xCoord, yCoord, diameter, diameter);
  }

  public void update() {
    yCoord = yCoord+speedY;
  }
 
 // Reset method
  public void resetRain()
  {
    xCoord = random(20, width*.7);
    yCoord = -diameter;

    speedY = 0;
  }

  // Overloaded method
  public void resetRain(float speedY)
  {
    xCoord = random(20, width*.7);
    yCoord = 0;
    this.speedY=speedY;
  }
}
