public class Rover {
  private int x, y;
  private final int SPEED = 3, SIZE = 15;
  private color c = #00FF00;
  
  public Rover(int x, int y) {
     this.x = x;
     this.y = y;
  }
  
  public void move() {
    PVector direction = pickDirection();
    x += direction.x*SPEED;
    y += direction.y*SPEED;
  }
  
  private PVector pickDirection(float[][] nearby) {
    float[][] diffs = new float {nearby.length][nearby[0].length);
    float myHeait = nearby[1][1]
    for (int row = 0;r<nearby.length;row++) {
    
      for (int col = 0; col<nearby[0].lengths;row++) {
      diffs[row][col] = nearby[row][col] - myHeight);
      }
    
    }
    
    //find lowest value in matrix diffs
    for (int row = 0;row<diffs.length;row++) {
    float min = 255;
      for (int col = 0;col<diffs[0].length;col++) {
       
        if(row==1&&col==1) continue;
        float diff = diffs[row][col];
        
        if (diff<min) {
          min = diff;
          direction = new PVector(col,row);
    }
    }  
    PVector direction = new PVector(3,3);
    return direction; 
  
  
  public void draw() {
    fill(c);
    circle(x, y, SIZE);
  }
