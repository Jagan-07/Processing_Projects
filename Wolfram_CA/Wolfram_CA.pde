//  Wolfram Elementary Cellular Automaton


// Simple demonstration of a Wolfram 1-dimensional cellular automata
// When the system reaches bottom of the window, it restarts with a new ruleset
// Mouse click restarts as well
   
   
 
ECA eca;           // An object to describe a Wolfram elementary Cellular Automata

int delay = 0;

void setup() {
  size(900, 300);
  background(255);
  int[] ruleset = {0, 1, 0, 1, 1, 0, 1, 0};         // An initial ruleset
  eca = new ECA(ruleset);
  frameRate(30);
}

void draw() {
  eca.display();             // Draw the CA
  eca.generate();

  if (eca.finised()) {       // If we're done, clear the screen, pick a new ruleset and restart
    delay++;
    if (delay > 30) {
      background(255);
      eca.randomRuleset();
      eca.restart();
      delay = 0;
    }
  }
}

void mousePressed() {        // When mouse pressed, clear the screen, pick a new ruleset and restart
  background(255);
  eca.randomRuleset();
  eca.restart();
}
