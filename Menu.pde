class Menu {
  void display() {
    background(200);
    //fill(0);
    //textSize(20);
    ////text("x:" + mouseX + "y:" + mouseY, width/2, 20);
    stroke(0); // Warna garis (hitam)
    textAlign(CENTER, CENTER); // Pusatkan teks
    rectMode(CENTER);
    
    //Tombol Start
    pushMatrix();
    translate(0, 0, 0); //Layer 0
    fill(StartButton);
    rect(width/2, 420, 280, 60);
    fill(0); // Warna teks (hitam)
    textSize(30); // Ukuran teks
    //textFont(FontMenu); // Mengatur jenis huruf dengan varian tebal
    text("START", width/2, 415); // Teks "START" pada tombol
    popMatrix();

    // Tombol Credits
    pushMatrix();
    {
      fill(NButton);
      rect(width/2, 500, 280, 60);
      fill(0); // Warna teks (hitam)
      textSize(30); // Ukuran teks
      //textFont(FontMenu); // Mengatur jenis huruf dengan varian tebal
      text("CREDITS", width/2, 495); // Teks "GAK TAU" pada tombol
    }
    popMatrix();

    // Tombol Quit
    pushMatrix();
    fill(QuitButton);
    rect(width/2, 580, 280, 60);
    fill(0); // Warna teks (hitam)
    textSize(30); // Ukuran teks
    text("QUIT", width/2, 575); // Teks "QUIT" pada tombol
    popMatrix();
    rectMode(CORNER); // Kembalikan ke rectMode(CORNER) untuk objek berikutnya

    // Laut
    pushMatrix();
    translate(0, -50, -1); //Layer -1
    noStroke();
    fill(105, 202, 247);
    ellipse(width/2, 390, 1500, 170);
    popMatrix();

    pushMatrix();
    translate(0, -45, -2); //Layer -2
    noStroke();
    fill(172, 227, 252);
    ellipse(width/2, 390, 1500, 170);
    popMatrix();

    pushMatrix();
    translate(0, -35, -3); //Layer -3
    noStroke();
    fill(200, 237, 255);
    ellipse(width/2, 390, 1500, 170);
    popMatrix();

    //Ombak
    pushMatrix();
    translate(-70, 15, 0); //Layer 0
    noStroke();
    beginShape();
    fill(74, 188, 240);
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
    popMatrix();

    pushMatrix();
    translate(300, 50, 0); //Layer 0
    noStroke();
    beginShape();
    fill(74, 188, 240);
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
    popMatrix();

    pushMatrix();
    translate(650, 10, 0); //Layer 0
    noStroke();
    beginShape();
    fill(74, 188, 240);
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
    popMatrix();


    // Pasir
    pushMatrix();
    translate(0, 0, -4); //Layer -4
    fill(226, 210, 135);
    rectMode(CENTER);
    rect(width/2, 530, 1310, 350);
    rectMode(CORNER); // Kembalikan ke rectMode(CORNER) untuk objek berikutnya
    popMatrix();

    // Langit
    pushMatrix();
    translate(0, 0, 0); //Layer 0
    noStroke();
    fill(255, 179, 94);
    rectMode(CENTER);
    rect(width/2, 125, 1310, 350);
    popMatrix();

    //Awan
    pushMatrix();
    translate(-30, 0, 1); //Layer 1
    noStroke();
    fill(255);
    circle(189, 88, 50);
    circle(225, 74, 50);
    circle(252, 79, 50);
    circle(278, 94, 50);
    circle(218, 110, 50);
    circle(245, 100, 50);
    popMatrix();

    pushMatrix();
    translate(300, 100, 1); //Layer 1
    noStroke();
    fill(255);
    circle(189, 88, 50);
    circle(225, 74, 50);
    circle(252, 79, 50);
    circle(278, 94, 50);
    circle(218, 110, 50);
    circle(245, 100, 50);
    popMatrix();

    pushMatrix();
    translate(600, 50, 1); //Layer 1
    noStroke();
    fill(255);
    circle(189, 88, 50);
    circle(225, 74, 50);
    circle(252, 79, 50);
    circle(278, 94, 50);
    circle(218, 110, 50);
    circle(245, 100, 50);
    popMatrix();

    pushMatrix();
    translate(940, 35, 1); //Layer 1
    noStroke();
    fill(255);
    circle(189, 88, 50);
    circle(225, 74, 50);
    circle(252, 79, 50);
    circle(278, 94, 50);
    circle(218, 110, 50);
    circle(245, 100, 50);
    stroke(0);  // Mengatur ulang stroke ke warna hitam
    strokeWeight(1);
    popMatrix();

    // Kapal
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


    // Pohon Palm
    pushMatrix();
    scale(1.1);
    translate(-370, 20, 0); //Layer 0
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
    popMatrix();

    // Batu
    pushMatrix();
    fill(173, 169, 159);
    translate(0, 0, 0); //Layer 0
    beginShape();
    curveVertex(936, 600);
    curveVertex(936, 600);

    curveVertex(930, 570);
    curveVertex(942, 549);
    curveVertex(940, 529);
    curveVertex(954, 507);
    curveVertex(976, 496);
    curveVertex(1006, 496);
    curveVertex(1041, 491);
    curveVertex(1073, 517);
    curveVertex(1138, 539);
    curveVertex(1145, 558);
    curveVertex(1158, 581);

    curveVertex(1132, 600);
    curveVertex(1132, 600);
    endShape();
    popMatrix();


    // Chest
    pushMatrix();
    translate(-350, 320, 0); //Layer 0
    scale(0.6);
    noStroke();
    fill(#AF5A25);
    quad(1045, 320, 1195, 320, 1145, 370, 995, 370);
    rect(995, 370, 150, 50);
    rect(1005, 430, 140, 35);
    fill(#672303);
    triangle(1200, 325, 1245, 370, 1155, 370);
    rect(1155, 370, 100, 50);
    rect(1155, 430, 100, 35);
    //garis pinggir
    fill(#E2B211);
    quad(1035, 320, 1045, 320, 995, 370, 985, 370);
    quad(1195, 320, 1200, 320, 1150, 370, 1145, 370);
    //garis vertical
    rect(985, 370, 10, 50);
    rect(1145, 370, 5, 50);
    rect(995, 430, 10, 35);
    rect(1145, 430, 5, 35);
    //bayangan vertical
    fill(#D36E20);
    rect(1150, 420, 105, 10);
    rect(1150, 370, 5, 50);
    rect(1150, 430, 5, 35);
    rect(1245, 430, 10, 35);
    //bayangan horizontal
    rect(1245, 370, 10, 50);
    rect(1150, 460, 105, 10);
    //bayangan pinggir
    quad(1200, 320, 1205, 320, 1155, 370, 1150, 370);
    quad(1195, 320, 1205, 320, 1255, 370, 1245, 370);
    //garis horizontal
    fill(#E2B211);
    rect(985, 420, 165, 10);
    rect(995, 460, 155, 10);
    //garis kayu
    fill(#672303);
    quad(1030, 320, 1035, 320, 985, 370, 980, 370);
    rect(1045, 320, 140, 10);
    rect(1025, 340, 140, 10);
    rect(995, 370, 150, 10);
    rect(995, 410, 150, 10);
    rect(1005, 430, 140, 15);
    rect(1005, 460, 140, 5);
    rect(1040, 430, 5, 30);
    rect(1100, 430, 5, 30);
    quad(1045, 320, 1055, 320, 1020, 370, 995, 370);
    quad(995, 370, 1020, 370, 1010, 410, 995, 410);
    quad(1175, 320, 1195, 320, 1145, 370, 1140, 370);
    quad(1130, 370, 1145, 370, 1145, 410, 1135, 410);
    quad(1110, 430, 1145, 430, 1145, 460, 1135, 460);
    quad(1005, 430, 1045, 430, 1015, 460, 1005, 460);
    fill(#551C02);
    quad(1200, 325, 1203, 327, 1160, 370, 1155, 370);
    quad(1200, 327, 1203, 325, 1245, 370, 1240, 370);
    quad(1202, 318, 1208, 318, 1260, 370, 1255, 370);
    rect(1030, 318, 180, 3);
    rect(1155, 370, 90, 10);
    rect(1155, 400, 90, 10);
    rect(1185, 430, 5, 30);
    rect(980, 370, 5, 70);
    rect(1255, 370, 5, 100);
    rect(990, 430, 5, 38);
    triangle(1155, 375, 1180, 375, 1155, 390);
    triangle(1155, 405, 1180, 405, 1155, 420);
    triangle(1155, 430, 1170, 430, 1155, 460);
    triangle(1190, 430, 1200, 430, 1185, 450);
    triangle(1190, 442, 1200, 460, 1185, 460);
    triangle(1155, 430, 1170, 460, 1155, 460);
    triangle(1215, 375, 1245, 375, 1245, 390);
    triangle(1215, 405, 1245, 405, 1245, 420);
    triangle(1225, 430, 1245, 430, 1245, 460);
    triangle(1225, 460, 1245, 430, 1245, 460);
    rect(985, 430, 270, 10);
    rect(1005, 470, 240, 10);
    triangle(1002, 470, 1005, 470, 1005, 480);
    triangle(1240, 470, 1255, 470, 1245, 480);

    //gembok
    fill(#E8DBD5);
    //arc(1120, 370, 20, 35, PI, TWO_PI);
    rect(1055, 410, 30, 20);
    arc(1070, 430, 30, 40, 0, PI);
    fill(255);
    rect(1055, 430, 30, 7);
    //lubang kunci
    fill(0);
    rect(1060, 420, 20, 5);
    rect(1067.5, 420, 5, 20);
    //garis pinggir
    fill(#551C02);
    rect(1052, 410, 3, 25);
    rect(1085, 410, 3, 25);
    rect(1052, 410, 35, 3);
    popMatrix();


    // JUDUL
    pushMatrix();
    {
      translate(width/2, height/2, 100);
      fill(228, 88, 14);
      noStroke();
      lights();
      rotateY(radians(map(mouseX, 0, width, -12, 12)));
      translate(0, 80);
      scale(0.9);

      //HURUF S
      pushMatrix();
      {
        translate(-360, -260);
        box(60, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-320, -240);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-370, -220);
        box(80, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-400, -280);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-350, -300);
        box(80, 20, 40);
      }
      popMatrix();

      // HURUF O
      pushMatrix();
      {
        translate(-200, -260);
        box(20, 60, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-240, -300);
        box(60, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-280, -260);
        box(20, 60, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-240, -220);
        box(60, 20, 40);
      }
      popMatrix();

      // HURUF K
      pushMatrix();
      {
        translate(-80, -300);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-100, -280);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-130, -260);
        box(40, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-100, -240);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-80, -220);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-160, -260);
        box(20, 100, 40);
      }
      popMatrix();

      // HURUF O
      pushMatrix();
      {
        translate(0, -300);
        box(60, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(-40, -260);
        box(20, 60, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(40, -260);
        box(20, 60, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(0, -220);
        box(60, 20, 40);
      }
      popMatrix();

      // HURUF B
      pushMatrix();
      {
        translate(80, -260);
        box(20, 100, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(120, -300);
        box(60, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(160, -280);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(120, -260);
        box(60, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(160, -240);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(120, -220);
        box(60, 20, 40);
      }
      popMatrix();

      // HURUF A
      pushMatrix();
      {
        translate(200, -250);
        box(20, 80, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(240, -300);
        box(60, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(280, -250);
        box(20, 80, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(240, -260);
        box(60, 20, 40);
      }
      popMatrix();

      // HURUF N
      pushMatrix();
      {
        translate(320, -260);
        box(20, 100, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(340, -280);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(360, -260);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(380, -240);
        box(20, 20, 40);
      }
      popMatrix();
      pushMatrix();
      {
        translate(400, -260);
        box(20, 100, 40);
      }
      popMatrix();


      // SUB JUDUL
      pushMatrix();
      {
        scale(0.6);
        translate(20, -60);
        //translate(300, -60);

        //HURUF T
        pushMatrix();
        {
          translate(-740, -230);
          box(100, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-740, -180);
          box(20, 80, 40);
        }
        popMatrix();

        //HURUF R
        pushMatrix();
        {
          translate(-580, -150);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-620, -170);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-580, -200);
          box(20, 40, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-620, -230);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-660, -190);
          box(20, 100, 40);
        }
        popMatrix();

        //HURUF E
        pushMatrix();
        {
          translate(-490, -230);
          box(80, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-500, -190);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-490, -150);
          box(80, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-540, -190);
          box(20, 100, 40);
        }
        popMatrix();

        //HURUF A
        pushMatrix();
        {
          translate(-340, -180);
          box(20, 80, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-380, -230);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-380, -190);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-420, -180);
          box(20, 80, 40);
        }
        popMatrix();


        //HURUF S
        pushMatrix();
        {
          translate(-250, -230);
          box(80, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-300, -210);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-260, -190);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-220, -170);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-270, -150);
          box(80, 20, 40);
        }
        popMatrix();

        //HURUF U
        pushMatrix();
        {
          translate(-100, -200);
          box(20, 80, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-140, -150);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-180, -200);
          box(20, 80, 40);
        }
        popMatrix();

        //HURUF R
        pushMatrix();
        {
          translate(-20, -230);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(20, -200);
          box(20, 40, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-20, -170);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(20, -150);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(-60, -190);
          box(20, 100, 40);
        }
        popMatrix();

        //HURUF E
        pushMatrix();
        {
          translate(60, -190);
          box(20, 100, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(110, -230);
          box(80, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(100, -190);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(110, -150);
          box(80, 20, 40);
        }
        popMatrix();

        //HURUF H
        pushMatrix();
        {
          translate(300, -190);
          box(20, 100, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(340, -190);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(380, -190);
          box(20, 100, 40);
        }
        popMatrix();

        //HURUF U
        pushMatrix();
        {
          translate(420, -200);
          box(20, 80, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(460, -150);
          box(60, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(500, -200);
          box(20, 80, 40);
        }
        popMatrix();

        //HURUF N
        pushMatrix();
        {
          translate(540, -190);
          box(20, 100, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(560, -210);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(580, -190);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(600, -170);
          box(20, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(620, -190);
          box(20, 100, 40);
        }
        popMatrix();

        //HURUF T
        pushMatrix();
        {
          translate(700, -230);
          box(100, 20, 40);
        }
        popMatrix();
        pushMatrix();
        {
          translate(700, -190);
          box(20, 100, 40);
        }
        popMatrix();
      }
      popMatrix();
    }
    popMatrix();
  }
}
