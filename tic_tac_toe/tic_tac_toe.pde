Board runBoard = new Board();

void setup() {
  size(500, 500);
  noLoop();
  runBoard.fillBoard();
  runBoard.updateComp(1);
}

void draw() {
  background(180);
  line(167, 0, 167, 500);
  line(333, 0, 333, 500);
  line(0, 167, 500, 167);
  line(0, 333, 500, 333);
  runBoard.drawDisplay();
  //runBoard.updateComp(1); // first move
}

void keyPressed() {
  runBoard.playerInput();
}
