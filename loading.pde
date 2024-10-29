class Loading {
  void display() {
    if (w > 400) {
      level = 1;
    } else {
    wait++;
    background(183, 158, 103);
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Loading", width/2, 565);
    //strokeWeight(2);
    //stroke(0);
    //noFill();
    //rect(450, 400, 400, 30);

    noStroke();
    fill(255);
    rect(450, 500, w, 30);
    if (wait >= 35) {
      w += 100;
      wait = 0;
      }
    }
    // Kapal
    push();
    translate(-520, 150);
    pushMatrix();
    translate(1000, 150, 1); //Layer 1
    scale(0.3);
    beginShape();
    noStroke();
    fill(85, 42, 26);
    vertex(600, 380);
    vertex(600, 310);
    vertex(620, 310);
    vertex(620, 380);
    endShape();

    // Bendera
    pushMatrix();
    translate(0, 30);
    beginShape();
    fill(0);
    vertex(500, 310);
    vertex(465, 240);
    vertex(465, 180);
    vertex(500, 110);
    vertex(750, 110);
    vertex(715, 180);
    vertex(715, 240);
    vertex(750, 310);
    vertex(500, 310);
    endShape();

    fill(255);
    circle(590, 190, 100);
    fill(0);
    circle(610, 180, 30);
    circle(570, 180, 30);
    popMatrix();

    beginShape();
    fill(232, 156, 0);
    //noFill();
    vertex(360, 345);
    vertex(480, 345);
    vertex(530, 380);
    vertex(530, 380);
    vertex(700, 380);
    vertex(750, 345);
    vertex(850, 345);
    vertex(850, 365);
    vertex(750, 365);
    vertex(700, 400);
    vertex(530, 400);
    vertex(480, 365);
    vertex(360, 365);
    vertex(360, 345);
    endShape();

    beginShape();
    fill(123, 67, 42);
    vertex(390, 365);
    vertex(480, 500);
    vertex(740, 500);
    vertex(820, 365);
    vertex(750, 365);
    vertex(700, 400);
    vertex(530, 400);
    vertex(480, 365);
    endShape();

    fill(255);
    circle(535, 440, 40);
    circle(620, 440, 40);
    circle(705, 440, 40);
    popMatrix();
    pop();
  }
}
