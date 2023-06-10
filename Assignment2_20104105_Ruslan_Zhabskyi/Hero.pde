public class Hero {
  // Object fields 
  private float xCoord; // x coordinate of the Hero
  private float yCoord; // y coordinate of the Hero
  private float diameter; // Diameter of the Hero
  
  /*
  **Adding gravity, velocity and speed to control the hero's jump
  **Source from where learned the technique https://www.youtube.com/watch?v=l0HoJHc-63Q 
  */
  
  private float gravity = 1;
  private float velocity = 0;
  private float speed = 10;

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
    if ((diameter>=20) && (diameter<=80)) {
      this.diameter=diameter;
    } else {
      this.diameter = 50;
    }
  }

  public void setXCoord(float xCoord) {
    this.xCoord=xCoord;
  }
  public void setYCoord(float yCoord) {
    this.yCoord=yCoord;
  }
  
  // Constructor of the Hero
  public Hero(float diameter) {
    setDiameter(diameter);
    xCoord = width*.189;
    yCoord = height - diameter/2;
  }

  // Overloaded constructor
  public Hero(float xCoord, float yCoord, float diameter) {
    setDiameter(diameter);
    setXCoord(xCoord);
    setYCoord(yCoord);
  }

  // Display and update methods
  public void display() {
    fill(255);
    noStroke();
    image(heroTwoImage, xCoord-85, yCoord-110, 120, 150);
  }

  public void update() {
    yCoord+=velocity;
    velocity+=gravity;

    if (yCoord>calculateFloor(diameter)) {
      yCoord = calculateFloor(diameter);
    }

    if (xCoord < diameter/2) {
      xCoord = diameter/2;
    }

    if (xCoord > width*.7) {
      xCoord = width*.7;
    }
  }
  
  // Bespoke methods for the hero to move certain direction

  public void up() {
    if (yCoord==height-diameter/2) {
      velocity=-25;
    }
    
  }
  public void right() {
    xCoord+=speed;
  }
  public void left() {
    xCoord-=speed;
  }

  /*Bespoke methods
  **Return type
  */
  private float calculateFloor (float diameter) {
    float floor=height-diameter/2;
    return floor;
  }
}
