public class Villain {
  // Object fields 
  private float xCoord;
  private float yCoord;
  private float villainWidth;
  private float villainHeight;
  private float villainSpeedX;

  // Getters

  public float getXCoord() {
    return xCoord;
  }

  public float getYCoord() {
    return yCoord;
  }

  public float getVillainWidth() {
    return villainWidth;
  }

  public float getVillainHeight() {
    return villainHeight;
  }

  // Setters
  public void setVillainWidth(float villainWidth) {
    if ((villainWidth>=50) && (villainWidth<=100)) {
      this.villainWidth = villainWidth;
    } else {
      this.villainWidth = 60;
    }
  }

  public void setVillainHeight(float villainHeight) {
    if ((villainHeight>=50) && (villainHeight<=100)) {
      this.villainHeight=villainHeight;
    } else {
      this.villainHeight = 60;
    }
  }

  public void setXCoord(float xCoord) {
    this.xCoord=xCoord;
  }
  public void setYCoord(float yCoord) {
    this.yCoord=yCoord;
  }

  public void setVillainSpeedX(float villainSpeedX) {
    this.villainSpeedX=villainSpeedX;
  }

  // Constructor

  public Villain(float villainWidth, float villainHeight) {
    setVillainWidth(villainWidth);
    setVillainHeight(villainHeight);
    resetVillain();
  }

  // Display and update methods
  public void display() {
    fill(255);
    noStroke();
    image(villainImage, xCoord-18, yCoord-10, villainWidth+25, villainHeight+25);
  }

  public void update() {
    xCoord = xCoord - villainSpeedX;
    if (xCoord < 0) {
      resetVillain();
    }
  }

  // Reset method
  public void resetVillain() {
    villainHeight = random(50, 100);
    villainWidth = villainHeight;
    xCoord = width-villainWidth;
    yCoord = height-villainHeight;
    villainSpeedX = random(6, 12);
  }
}
