//CONSTANTS NEEDED:
//1: Cords for the Matrix:
//Each 'matrix cords' needs to be different based on the shape used.
//Because circles use a single point of reference, it needs to be the
//center of each square. There would be 9 points.
//For the "X", it needs to be different. Since "X"'s are rendered by
//crossing two lines, the following procedure could be used:
//Only the top-left corner needs to be saved as a constant, and the
//other points are found using an algorithm, by adding another set
//constant to the given x and y values.
//2: The radius of the Circle needs to be constant.
//3: The X and Y values of the lines need to be constant.

public final class Constants {
  private Constants() {
  }

  public static final int CIRCLEDIAMETER = 146;
  
  public static final int MATRIX0CIRCLE = 83; //center of circle
  public static final int MATRIX1CIRCLE = 250;
  public static final int MATRIX2CIRCLE = 416;
  
  public static final int MATRIXX1 = 10; //Distance from left line
  public static final int MATRIXX2 = 157; //Distance from the initial point to the 
  //rest of the points (uniform since it is essentially a square)
  
  public static final int LINEVALUE1 = 0; //values needed to render lines.
  public static final int LINEVALUE2 = 167;
  public static final int LINEVALUE3 = 333;
  public static final int LINEVALUE4 = 500;

}
