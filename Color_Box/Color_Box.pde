// Color Box

void setup() {           // This function runs Once.
  size(640, 360);        //Window size
}

void draw() {            // This function runs Forever.
  background(0);
  stroke(255);           // Line color
  line(width/2, 0, width/2, height);        //Y-axis line
  line(0, height/2, width, height/2);       //X-axis line

  if ((mouseX > width/2) && (mouseY > height/2)) {             //Green box
    fill(0, 255, 0);
    rect(width/2, height/2, 320, 180);
  } else if ((mouseX < width/2) && (mouseY > height/2)) {      //Red box
    fill(255, 0, 0);
    rect(0, height/2, 320, 180);
  } else if ((mouseX > width/2) && (mouseY < height/2)) {      //Blue box
    fill(0, 0, 255);
    rect(width/2, 0, 320, 180);
  } else if ((mouseX < width/2) && (mouseY < height/2)) {      //White box
    fill(255);
    rect(0, 0, 320, 180);
  }
}
