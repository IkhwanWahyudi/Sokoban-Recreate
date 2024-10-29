class Stage1 {
  //Bintang
  void star(int x1) {
    push();
    strokeWeight(3);
    translate(StarX+x1, StarY);
    scale(0.4);
    fill(#FCF44F);
    beginShape();
    vertex(0, -50);
    vertex(14, -20);
    vertex(47, -15);
    vertex(23, 7);
    vertex(29, 40);
    vertex(0, 25);
    vertex(-29, 40);
    vertex(-23, 7);
    vertex(-47, -15);
    vertex(-14, -20);
    endShape(CLOSE);
    pop();
  }

  void display() {
    // Pasir 1
    fill(234, 217, 141);
    noStroke();
    rect(0, 0, 810, 700);
    
    // Titik2 pantai
    push();
    stroke(183, 158, 103);
    strokeWeight(5);
    point(96, 68);
    point(178, 145);
    point(115, 182);
    point(270, 180);
    point(286, 338);
    point(322, 266);
    point(308, 78);
    point(349, 36);
    point(504, 85);
    point(503, 26);
    point(670, 40);
    point(815, 105);
    point(898, 184);
    point(792, 326);
    point(887, 371);
    point(818, 492);
    point(857, 571);
    point(680, 637);
    point(493, 687);
    point(395, 623);
    point(214, 606);
    point(279, 653);
    point(317, 521);
    point(326, 432);
    point(84, 599);
    point(26, 544);
    point(36, 655);
    pop();

    //fill(0);
    //textSize(20);
    //text("x:" + mouseX + "y:" + mouseY, width/2, 20);

    // Gua
    beginShape();
    noStroke();
    fill(181, 151, 151);
    vertex(265, 455);
    vertex(255, 305);
    vertex(150, 215);
    vertex(35, 180);
    vertex(-10, 185);
    vertex(-10, 455);
    endShape();

    beginShape();
    fill(1, 28, 40);
    vertex(190, 455);
    vertex(190, 380);
    vertex(155, 320);
    vertex(110, 320);
    vertex(80, 380);
    vertex(80, 455);
    endShape();

    // Pohon 1
    push();
    scale(0.6);
    translate(-280, 600);
    rectMode(CENTER);
    noStroke();
    fill(#E87407);
    quad(508, 245, 542, 245, 558, 525, 492, 525);
    fill(#F0961F);
    quad(508, 245, 532, 245, 535, 525, 492, 525);
    fill(#F7B423);
    rect(545, 300, 25, 15);
    rect(500, 350, 30, 15);
    rect(540, 410, 35, 15);
    rect(500, 480, 45, 15);
    //arc(600, 320, 15, 15, TWO_PI, 0);
    // kiri atas
    push();
    translate(440, 182);
    rotate(radians(35));
    fill(#549D4B);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#44813C);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // kiri bawah
    push();
    translate(450, 300);
    rotate(radians(-35));
    fill(#549D4B);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#44813C);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // daun kiri
    fill(#5BB74F);
    arc(420, 245, 215, 130, PI, TWO_PI);
    fill(#5CAD52);
    arc(420, 245, 215, 80, PI, TWO_PI);

    // kanan atas
    push();
    translate(623, 192);
    rotate(radians(-30));
    fill(#2D7624);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#509547);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // kanan bawah
    push();
    translate(615, 305);
    rotate(radians(35));
    fill(#2D7624);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#509547);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // daun kanan
    fill(#509547);
    arc(635, 245, 215, 130, PI, TWO_PI);
    fill(#5CAD52);
    arc(635, 245, 215, 80, PI, TWO_PI);
    rectMode(CORNER);
    pop();

    // Pohon 2
    push();
    scale(0.6);
    translate(-100, -320);
    rectMode(CENTER);
    noStroke();
    fill(#E87407);
    quad(508, 245, 542, 245, 558, 525, 492, 525);
    fill(#F0961F);
    quad(508, 245, 532, 245, 535, 525, 492, 525);
    fill(#F7B423);
    rect(545, 300, 25, 15);
    rect(500, 350, 30, 15);
    rect(540, 410, 35, 15);
    rect(500, 480, 45, 15);
    //arc(600, 320, 15, 15, TWO_PI, 0);
    // kiri atas
    push();
    translate(440, 182);
    rotate(radians(35));
    fill(#549D4B);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#44813C);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // kiri bawah
    push();
    translate(450, 300);
    rotate(radians(-35));
    fill(#549D4B);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#44813C);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // daun kiri
    fill(#5BB74F);
    arc(420, 245, 215, 130, PI, TWO_PI);
    fill(#5CAD52);
    arc(420, 245, 215, 80, PI, TWO_PI);

    // kanan atas
    push();
    translate(623, 192);
    rotate(radians(-30));
    fill(#2D7624);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#509547);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // kanan bawah
    push();
    translate(615, 305);
    rotate(radians(35));
    fill(#2D7624);
    arc(0, 0, 215, 130, PI, TWO_PI);
    fill(#509547);
    arc(0, 0, 215, 80, PI, TWO_PI);
    pop();
    // daun kanan
    fill(#509547);
    arc(635, 245, 215, 130, PI, TWO_PI);
    fill(#5CAD52);
    arc(635, 245, 215, 80, PI, TWO_PI);
    rectMode(CORNER);
    pop();

    //Laut
    fill(65, 102, 177);
    noStroke();
    rect(820, 0, 500, 700);
    
    // Lengkungan ujung pantai
    push();
    beginShape();
    translate(0, 0);
    noStroke();
    fill(176,255,241);
    curveVertex(810, -5);
    curveVertex(810, -5);

    curveVertex(875, -5);
    curveVertex(890, 62);
    curveVertex(970, 154);
    curveVertex(975, 234);
    curveVertex(1049, 302);
    curveVertex(1049, 413);
    curveVertex(989, 477);
    curveVertex(946, 602);
    curveVertex(892, 633);
    curveVertex(872, 705);

    curveVertex(810, 705);
    curveVertex(810, 705);
    endShape();
    pop();
    
    push();
    beginShape();
    translate(-10, 0);
    //stroke(0);
    noStroke();
    //noFill();
    fill(183, 158, 103);
    curveVertex(810, -5);
    curveVertex(810, -5);

    curveVertex(875, -5);
    curveVertex(890, 62);
    curveVertex(970, 154);
    curveVertex(975, 234);
    curveVertex(1049, 302);
    curveVertex(1049, 413);
    curveVertex(989, 477);
    curveVertex(946, 602);
    curveVertex(892, 633);
    curveVertex(872, 705);

    curveVertex(810, 705);
    curveVertex(810, 705);
    endShape();
    pop();

    push();
    beginShape();
    translate(-35, 0);
    noStroke();
    fill(206, 191, 124);
    curveVertex(810, -5);
    curveVertex(810, -5);

    curveVertex(875, -5);
    curveVertex(890, 62);
    curveVertex(970, 154);
    curveVertex(975, 234);
    curveVertex(1049, 302);
    curveVertex(1049, 413);
    curveVertex(989, 477);
    curveVertex(946, 602);
    curveVertex(892, 633);
    curveVertex(872, 705);

    curveVertex(810, 705);
    curveVertex(810, 705);
    endShape();
    pop();

    push();
    beginShape();
    translate(-50, 0);
    noStroke();
    fill(234, 217, 141);
    curveVertex(810, -5);
    curveVertex(810, -5);

    curveVertex(875, -5);
    curveVertex(890, 62);
    curveVertex(970, 154);
    curveVertex(975, 234);
    curveVertex(1049, 302);
    curveVertex(1049, 413);
    curveVertex(989, 477);
    curveVertex(946, 602);
    curveVertex(892, 633);
    curveVertex(872, 705);

    curveVertex(810, 705);
    curveVertex(810, 705);
    endShape();
    pop();
    
    // Dermaga
    push();
    translate(0, 0, 0); // layer 0
    stroke(61,68,78);
    fill(144,120,94);
    rect(950, 265, 20, 50);
    rect(1070, 265, 20, 50);
    rect(1190, 265, 20, 50);
    fill(194,182,148);
    rect(950, 265, 20, 10);
    rect(1070, 265, 20, 10);
    rect(1190, 265, 20, 10);
    pop();
    
    push();
    translate(0, 0, 1); // layer 1
    noStroke();
    fill(194,182,148);
    rect(940, 280, 280, 100);
    fill(141,118,93);
    rect(940, 380, 280, 10);
    stroke(141,118,93);
    line(960, 280, 960, 365);
    line(980, 280, 980, 380);
    line(1000, 280, 1000, 380);
    line(1020, 280, 1020, 380);
    line(1040, 280, 1040, 380);
    line(1060, 280, 1060, 380);
    line(1080, 280, 1080, 365);
    line(1100, 280, 1100, 380);
    line(1120, 280, 1120, 380);
    line(1140, 280, 1140, 380);
    line(1160, 280, 1160, 380);
    line(1180, 280, 1180, 380);
    line(1200, 280, 1200, 365);
    pop();
    
    push();
    translate(0, 0, 2); // layer 2
    stroke(61,68,78);
    fill(144,120,94);
    rect(950, 365, 20, 50);
    rect(1070, 365, 20, 50);
    rect(1190, 365, 20, 50);
    fill(194,182,148);
    rect(950, 365, 20, 10);
    rect(1070, 365, 20, 10);
    rect(1190, 365, 20, 10);
    pop();
    
    // Ombak
    push();
    fill(176,255,241);
    noStroke();
    translate(920, 0, 1);
    scale(0.4);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();
    
    push();
    fill(176,255,241);
    noStroke();
    translate(1000, 100, 1);
    scale(0.4);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();
    
    push();
    fill(176,255,241);
    noStroke();
    translate(1040, -100, 1);
    scale(0.4);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();
    
    push();
    fill(176,255,241);
    noStroke();
    translate(990, 430, 1);
    scale(0.4);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();
    
    push();
    fill(176,255,241);
    noStroke();
    translate(900, 540, 1);
    scale(0.4);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();
    
    push();
    fill(176,255,241);
    stroke(176,255,241);
    strokeWeight(3);
    translate(1007, 351, 3);
    scale(0.2);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();
    
    push();
    fill(176,255,241);
    stroke(176,255,241);
    strokeWeight(3);
    translate(1125, 351, 3);
    scale(0.2);
    beginShape();
    curveVertex(206, 328);
    curveVertex(206, 328);

    curveVertex(312, 310);
    curveVertex(427, 323);
    curveVertex(535, 314);
    curveVertex(427, 333);
    curveVertex(312, 320);

    curveVertex(206, 328);
    curveVertex(206, 328);
    endShape();
    pop();

    // ARENA
    push();
    translate(350, 100);
    // Jarak atau Grid
    stroke(0, 0, 0, 20);
    fill(234, 217, 141);
    for (int x = 0; x < SizeX; x += 50) {
      for (int y = 0; y < SizeY; y += 50) {
        square(x, y, 50);
      }
    }

    stroke(0, 0, 0, 0);
    // Menggambar tembok di bagian atas
    for (int x = 0; x < SizeX; x += 50) {
      //image(wall, x, 0, 50, 50);
      image(grass, x, 0, 50, 50);
    }

    // Menggambar tembok di bagian bawah
    for (int x = 0; x < SizeX; x += 50) {
      //image(wall, x, SizeY-50, 50, 50);
      image(grass, x, SizeY-50, 50, 50);
    }

    // Menggambar tembok di sisi kiri
    for (int y = 0; y < SizeY; y += 50) {
      //image(wall, 0, y, 50, 50);
      image(grass, 0, y, 50, 50);
    }

    // Menggambar tembok di sisi kanan
    for (int y = 0; y < SizeY; y += 50) {
      //image(wall, SizeX-50, y, 50, 50);
      image(grass, SizeX-50, y, 50, 50);
    }

    noStroke();
    fill(0, 255, 0, 80);
    rect(300, 400, 50, 50);
    rect(150, (SizeY - 100), 50, 50);
    stroke(1);
    image(player[PlayerDirection], PlayerX, PlayerY, 50, 50);
    fill(200);
    //square(KotakX, KotakY, 50);
    image(box, KotakX, KotakY, 50, 50);
    //square(Kotak2X, Kotak2Y, 50);
    image(box, Kotak2X, Kotak2Y, 50, 50);
    
    // Pause
    if (isPause) {
      push();
      translate(0, 0, 1); // Layer 1
      //noStroke();
      stroke(0);
      fill(200);
      rect(0, 0, 400, 500);
      fill(0);
      textSize(50);
      text("PAUSE", 200, 250);
      pop();
    } else {
      if (frameCount % 60 == 0 && time1 > 0) {
        time1--; // Kurangi time setiap 60 frame (sekitar 1 detik)
      }
    }

    // Tampilkan nilai time
    textSize(32);
    fill(0);
    text("TIME : " + time1, 55, -10);

    // Cek jika waktu telah habis
    if (time1 >= 30) {
      star(0);
      star(40);
      star(80);
    } else if (time1 >= 20 && time1 < 30) {
      star(40);
      star(80);
    } else if (time1 >= 10 && time1 < 20) {
      star(80);
    } else if (time1 == 0) {
      time1=0;
    }

    if ((KotakX == 300 && Kotak2X == 150) && (KotakY == 400 && Kotak2Y == (SizeY - 100))) {
      level = 2;
    } else if ((Kotak2X == 300 && KotakX == 150) && (Kotak2Y == 400 && KotakY == (SizeY - 100))) {
      level = 2;
    }
    pop();
  }
}
