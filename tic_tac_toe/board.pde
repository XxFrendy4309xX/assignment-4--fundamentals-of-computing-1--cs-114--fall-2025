

public class Board {
  private int[] boardArray;
  
  public int[] fillBoard() {
    boardArray = new int[BOARD];
    //"1" means the spot is marked with an O
    //"O" means the spot is marked with an X
    //"2" means the spot is empty.
    for (int fillAmount = BOARD; fillAmount > 0; fillAmount--) {
      boardArray[fillAmount - 1] = NULLSLOT;
    }
    return boardArray;
    }
    
  public void playerInput() {
  boolean playerState = true;
  boolean winState = false;
  int keyOutput = 1;
      if (key == '1') {
        keyOutput = 1;
       playerState = updatePlayer(keyOutput, playerState);
       if (playerState == true) {
         updateComp(0);
       }  
      }
      else if (key == '2') {
        keyOutput = 2;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      }
      else if (key == '3') {
        keyOutput = 3;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      }
      else if (key == '4') {
        keyOutput = 4;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      }
      else if (key == '5') {
        keyOutput = 5;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      }
      else if (key == '6') {
        keyOutput = 6;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      }
      else if (key == '7') {
        keyOutput = 7;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
          updateComp(0);
       }
      }
      else if (key == '8') {
        keyOutput = 8;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      }
      else if (key == '9') {
        keyOutput = 9;
        playerState = updatePlayer(keyOutput, playerState);
        if (playerState == true) {
         updateComp(0);
       }
      } else {
        keyOutput = 0;
        println("Not A Valid Input!");
      }
      for (int i = 0; i < BOARD; i++) {
         winState = winStates(winState, i);
       }
       if (winState == true) {
         println("Game Complete!");
       }
       if (winState == false) {
         boolean drawState = true;
         for (int i = BOARD; i > 0; i--) {
           if (boardArray[i - 1] == 2) {
             drawState = false;
           } 
         }
         if (drawState == false ) {
           println("Game Still in Play!");
         }
         if (drawState == true) {
           println("Game Ends in Draw!");
         }
       }
      println(keyOutput);
    }
  
  public void drawDisplay() {
    for (int i = BOARD; i > 0; i--) {
      if (boardArray[i - 1] == 0) {
        updateBoard(0, i);
        checkScreenUpdateType(0, i);
      }
      if (boardArray[i - 1] == 1) {
        checkScreenUpdateType(1, i);
      }
    }
  }
  
  private void updateScreen(int type, int xShape, int yShape) {
    Shapes drawShape = new Shapes();
    if (type == 1) {
      drawShape.drawCircle(xShape, yShape, CIRCLEDIAMETER);
    } else {
      drawShape.drawX(xShape, yShape);
    }
    redraw();
  }
  
  public boolean updatePlayer(int input, boolean playerState) { // re-add a check variable later...
    println("Player Moved.");
    if (boardArray[input - 1] == NULLSLOT) {
      checkScreenUpdateType(1, input);
      updateBoard(1, input);
      playerState = true;
    } else {
      playerState = false;
      println("Space already taken, please choose another space!");
    }
    return playerState;
  }
  
  public void updateComp(int type) {
    boolean checkResult = false;
    int compMove = 5;
    if (type == 1) {
      updateScreen(COMPUTER, LINEVALUE2, LINEVALUE2); // first move
      compMove = 5;
    } else {
      while (checkResult == false) {
        compMove = int(random(1, 9.1)); //randomly selects a square
        if (boardArray[compMove - 1] == NULLSLOT) {
          checkScreenUpdateType(COMPUTER, compMove);
          checkResult = true;
        }
      }
    }
    updateBoard(0, compMove);
    println("Computer Moved.");
  }
  
  private int[] updateBoard(int type, int input) {
    if (boardArray[input - 1] == NULLSLOT) {
          boardArray[input - 1] = type;
    }
    return boardArray;
  }
  
  private boolean checkWinCondition(int[] checkWin, boolean winCondition, int pos1, int pos2, int pos3) {
    if (checkWin[pos1] == 1 && checkWin[pos2] == 1 && checkWin[pos3] == 1) {
      winCondition = true;
      println("Player Wins!");
    }
    if (checkWin[pos1] == 0 && checkWin[pos2] == 0 && checkWin[pos3] == 0) {
      winCondition = true;
      println("Computer Wins!");
    }
    return winCondition; // returns in computer or player wins. 
  }
  
  public boolean winStates(boolean win, int input) {
    switch (input) {
      case 1: input = 1;
        win = checkWinCondition(boardArray, win, 0, 3, 6);
        if (win == true) {
          break;
        }
      case 2: input = 2;
        win = checkWinCondition(boardArray, win, 1, 4, 7);
        if (win == true) {
          break;
        }
      case 3: input = 3;
        win = checkWinCondition(boardArray, win, 2, 5, 8);
        if (win == true) {
          break;
        }
      case 4: input = 4;
        win = checkWinCondition(boardArray, win, 0, 1, 2);
        if (win == true) {
          break;
        }
      case 5: input = 5;
        win = checkWinCondition(boardArray, win, 3, 4, 5);
        if (win == true) {
          break;
        }
      case 6: input = 6;
        win = checkWinCondition(boardArray, win, 6, 7, 8);
        if (win == true) {
          break;
        }
      case 7: input = 7;
        win = checkWinCondition(boardArray, win, 2, 4, 6);
        if (win == true) {
          break;
        }
      case 8: input = 8;
        win = checkWinCondition(boardArray, win, 0, 4, 8);
        if (win == true) {
          break;
        }
      default: 
        win = false;
    }
    return win;  
  }
  
  private int[] checkScreenUpdateType(int type, int input) {   
    switch (input) {
      case 1: input = 1; // 0,0
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE1, LINEVALUE1 );
          } else {
            updateScreen(PLAYER, CIRCLECENTER0, CIRCLECENTER0);
          }
        break;
      case 2: input = 2; // 1,0
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE2, LINEVALUE1 );
          } else {
            updateScreen(PLAYER, CIRCLECENTER1, CIRCLECENTER0);
          }
        break;
      case 3: input = 3; // 2,0
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE3, LINEVALUE1 );
          } else {
            updateScreen(PLAYER, CIRCLECENTER2, CIRCLECENTER0);
          }
        break;
      case 4: input = 4; // 0,1
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE1, LINEVALUE2);
          } else {
            updateScreen(PLAYER, CIRCLECENTER0, CIRCLECENTER1);
          }
        break;
      case 5: input = 5; // 1,1
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE2, LINEVALUE2 );
          } else {
            updateScreen(PLAYER, CIRCLECENTER1, CIRCLECENTER1);
          }
        break;
      case 6: input = 6; // 1,2
         // result = true;
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE3, LINEVALUE2 );
          } else {
            updateScreen(PLAYER, CIRCLECENTER2, CIRCLECENTER1);
          }
        break;
      case 7: input = 7; // 2,0
         // result = true;
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE1, LINEVALUE3);
          } else {
            updateScreen(PLAYER, CIRCLECENTER0, CIRCLECENTER2);
          }
        break;
      case 8: input = 8; // 2,1
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE2, LINEVALUE3);
          } else {
            updateScreen(PLAYER, CIRCLECENTER1, CIRCLECENTER2);
          }
        break;
      case 9: input = 9; // 2,2
          if (type == COMPUTER) {
            updateScreen(COMPUTER, LINEVALUE3, LINEVALUE3);
          } else {
            updateScreen(PLAYER, CIRCLECENTER2, CIRCLECENTER2);
          }
        break;
      default: boardArray[4] = COMPUTER;
    }
    return boardArray;
  }
}
