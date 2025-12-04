public class Shapes {
  
  public void drawCircle(int x, int y, int diameter) {
    circle(x, y, diameter); 
  }
  
  public void drawX(int x, int y) { //x and y here represent the top left corner. 
    //how to find other points:
    int topLeftX;
    int topLeftY;
    int topRightX;
    int topRightY;
    int bottomLeftX;
    int bottomLeftY;
    int bottomRightX;
    int bottomRightY;
    
    topLeftX = (x + LEFTLINEDISTANCE);
    topLeftY = y;
    
    topRightX = (topLeftX + COMPUTERLINEDISTANCE);
    topRightY = y;
    
    bottomLeftX = topLeftX;
    bottomLeftY = (topLeftY + COMPUTERLINEDISTANCE);
    
    bottomRightX = (topLeftX + COMPUTERLINEDISTANCE);
    bottomRightY = bottomLeftY;
    
    line(topLeftX, topLeftY, bottomRightX, bottomRightY);
    line(bottomLeftX, bottomLeftY, topRightX, topRightY);
    
  }
}
