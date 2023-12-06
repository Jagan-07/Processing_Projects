// Wolfram Cellular Automata


// A class to manage the ECA
class ECA {
  int[] cells;          // An array of 0s and 1s 
  int[] ruleset;        // An array to store the ruleset, for example {0,1,1,0,1,1,0,1}
  int generation;       // How many generations?
  int w = 5;

  ECA(int[] r) {
    ruleset = r;
    cells = new int[width/w];
    restart();
  }

  // creating random ruleset using FOR LOOP.
  void randomRuleset() {                  
    for (int i = 0; i < 8; i++) {
      ruleset[i] = int(random(2));
    }
  }

  // Starting point for every new ruleset
  void restart() {                         
    for (int i=0; i<cells.length; i++) {   
      cells[i] = 0;                        // initially all the values of cells array's element is '0' except middle element.
    } 
    cells[cells.length/2] = 1;            // middle element value is '1'
    generation = 0;                       // initially it is 0th generation.
  }

  // The process of creating the new generation
  void generate() {  
    // Create new array called 'nextGen' for the new values
    int[] nextGen = new int[cells.length]; 
    // For every spot, determine new state by examing current state, and neighbor states
    // Ignore edges that only have one neighor
    for (int i=1; i<cells.length-1; i++) {
      int left = cells[i-1];            // Left neighbor state
      int middle = cells[i];            // Current state
      int right = cells[i+1];           // Right neighbor state
      nextGen[i] = rules(left, middle, right);   // Compute next generation state based on ruleset
    }
    // The current generation is the new generation
    cells = nextGen;       
    generation++;          //  generation is incremented by 1.
  }

  // draw the cells, fill 255 for '0', fill 0 for '1'
  void display() {
    for (int i=0; i<cells.length; i++) {
      if (cells[i] == 1) fill(0);
      else
        fill(255);
      noStroke();
      rect(i*w, generation*w, w, w);
    }
  }

  // Implementing the Wolfram rules
  // This is the concise conversion to binary way
  int rules(int a, int b, int c) {
    String s = "" + a + b + c;
    int index = Integer.parseInt(s, 2);
    return ruleset[index];
  }

  // The ECA is done if it reaches the bottom of the screen
  boolean finised() {
    if (generation > height/w) {
      return true;
    } else {
      return false;
    }
  }
}
