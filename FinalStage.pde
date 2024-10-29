class FinalStage {
  void display() {
    background(0);
    fill(255);
    textSize(20);
    text("x:" + mouseX + "y:" + mouseY, width/2, 20);

    //Dinding lorong kiri (atas)
    stroke(0);
    for (int x = 0; x < 450; x += 50) {
      image(wall, x, 300, 50, 100);
    }
    for (int x = 0; x < 450; x += 50) {
      fill(200);
      square(x, 250, 50);
    }

    //Dinding lorong kiri (bawah)
    for (int x = 0; x < 450; x += 50) {
      fill(200);
      //image(wall, x, 100, 50, 50);
      square(x, 450, 50);
    }

    //Dinding kiri
    for (int y = 50; y < 250; y += 50) {
      fill(200);
      square(400, y, 50);
    }
    for (int y = 500; y < 650; y += 50) {
      fill(200);
      square(400, y, 50);
    }

    //Dinding Kanan
    for (int y = 50; y < 650; y += 50) {
      fill(200);
      square(1000, y, 50);
    }

    //Dinding Atas
    for (int x = 450; x < 1000; x += 50) {
      fill(200);
      square(x, 50, 50);
    }
    for (int x = 450; x < 1000; x += 50) {
      image(wall, x, 100, 50, 100);
    }

    //Dinding Bawah
    for (int x = 450; x < 1000; x += 50) {
      fill(200);
      square(x, 600, 50);
    }

    //Lantai
    stroke(0, 0, 0, 20);
    for (int x = 0; x < 450; x += 50) {
      fill(73, 85, 138);
      square(x, 400, 50);
    }

    fill(73, 85, 138);
    for (int x = 450; x < 650; x += 50) {
      for (int y = 200; y < 600; y += 50) {
        square(x, y, 50);
      }
    }

    for (int x = 800; x < 1000; x += 50) {
      for (int y = 200; y < 600; y += 50) {
        square(x, y, 50);
      }
    }

    for (int x = 650; x < 800; x += 50) {
      for (int y = 400; y < 600; y += 50) {
        square(x, y, 50);
      }
    }

    //Red Carpet
    //push();
    //translate(0, 0, 1); // Layer 1
    ////noStroke();
    //stroke(0, 0, 0);
    //fill(255, 0, 0);
    //rect(675, 250, 100, 200);
    //stroke(255, 255, 0);
    //line(700, 275, 700, 425);
    //line(700, 425, 750, 425);
    //line(750, 275, 750, 425);
    //line(700, 275, 750, 275);
    //pop();
    fill(255, 0, 0);
    stroke(255, 255, 0);
    rect(650, 200, 150, 200);
    stroke(255, 255, 0);

    //Chest
    image(chestClose, 700, 200, 50, 50);

    //Torch
    image(torch, 625, 125, 50, 50);
    image(torch, 775, 125, 50, 50);

    push();
    translate(0, 0, 0);
    image(player[PlayerDirection], Player4X, Player4Y, 50, 50);
    pop();

    //interact();
    if (Player4X == 700 && Player4Y == 250 || Player4X == 650 && Player4Y == 200 || Player4X == 750 && Player4Y == 200) {
      fadeOut();
      push();
      translate(0, 0, 0);
      fill(255);
      textAlign(CENTER);
      text("Press 'ENTER' ", 725, 190);
      pop();
    } else {
      push();
      translate(0, 0, -1);
      fill(255);
      textAlign(CENTER);
      text("Press 'ENTER' ", 725, 190);
      pop();
    }
  }
}
