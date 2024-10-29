class Stage2 {
  //Bintang
  void star(int x1) {
    push();
    stroke(1);
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
    background(0);
    //fill(255);
    //textSize(20);
    //text("x:" + mouseX + "y:" + mouseY, width/2, 20);

    //========== DINDING ==========
    stroke(0);
    fill(200);
    // Dinding atas
    for (int x = 350; x < 950; x += 50) {
      square(x, 50, 50);
    }
    for (int x = 400; x < 600; x += 50) {
      image(wall, x, 100, 50, 100);
    }

    for (int x = 700; x < 900; x += 50) {
      image(wall, x, 100, 50, 100);
    }

    //Dinding kiri
    for (int y = 100; y < 650; y += 50) {
      square(350, y, 50);
    }

    //Dinding kanan
    for (int y = 100; y < 250; y += 50) {
      square(900, y, 50);
    }
    for (int y = 450; y < 600; y += 50) {
      square(900, y, 50);
    }

    //Dinding lorong kanan (atas)
    for (int x = 900; x < 1300; x += 50) {
      image(wall, x, 300, 50, 100);
    }
    for (int x = 900; x < 1300; x += 50) {
      square(x, 250, 50);
    }

    //Dinding lorong kanan (bawah)
    for (int x = 900; x < 1300; x += 50) {
      square(x, 450, 50);
    }

    //Dinding Bawah
    for (int x = 400; x < 950; x += 50) {
      square(x, 600, 50);
    }
    
    //========== LANTAI ==========
    // Menggambar lantai
    stroke(0, 0, 0, 20);
    fill(73, 85, 138);
    for (int y = 200; y < 600; y += 50) {
      square(400, y, 50);
    }

    for (int y = 200; y < 600; y += 50) {
      square(850, y, 50);
    }

    for (int x = 900; x < 1300; x += 50) {
      square(x, 400, 50);
    }

    push();
    translate(450, 200, 0);
    fill(73, 85, 138);
    for (int x = 0; x < 400; x += 50) {
      for (int y = 0; y < 400; y += 50) {
        square(x, y, 50);
      }
    }

    stroke(0, 0, 0, 0);
    fill(0, 255, 0, 80);
    rect(50, 200, 50, 50); // Atas
    rect(50, 250, 50, 50); // Kanan
    rect(50, 300, 50, 50); // Kiri

    // Menggambar Barrel pembatas
    for (int x = 50; x < 150; x += 50) {
      image(barrel, x, 0, 50, 50);
    }
    for (int y = 150; y < 400; y += 50) {
      image(barrel, 0, y, 50, 50);
      image(barrel, 350, y, 50, 50);
    }
    image(barrel, 100, 150, 50, 50);
    for (int y = 0; y <= 150; y += 50) {
      image(barrel, 50, y, 50, 50);
    }
    for (int y = 150; y <= 350; y += 50) {
      image(barrel, 0, y, 50, 50);
    }
    for (int x = 100; x <= 200; x += 50) {
      image(barrel, x, 0, 50, 50);
    }
    for (int x = 200; x <= 300; x += 50) {
      image(barrel, x, 50, 50, 50);
    }
    image(barrel, 300, 100, 50, 50);
    image(barrel, 350, 150, 50, 50);
    image(barrel, 300, 150, 50, 50);
    image(barrel, 200, 150, 50, 50);
    image(barrel, 200, 200, 50, 50);

    for (int x = 0; x <= 350; x += 50) {
      image(barrel, x, 350, 50, 50);
    }
    for (int y = 150; y <= 350; y += 50) {
      image(barrel, 350, y, 50, 50);
    }

    fill(0);

    //square(Kotak3X, Kotak3Y, 50);
    image(box, Kotak3X, Kotak3Y, 50, 50);
    //square(Kotak4X, Kotak4Y, 50);
    image(box, Kotak4X, Kotak4Y, 50, 50);
    //square(Kotak5X, Kotak5Y, 50);
    image(box, Kotak5X, Kotak5Y, 50, 50);

    image(player[PlayerDirection], Player2X, Player2Y, 50, 50);

    if (isPause) {
      push();
      translate(0, 0, 1);
      stroke(0);
      fill(200);
      rect(0, 0, 400, 400);
      fill(0);
      textSize(50);
      text("PAUSE", 200, 200);
      pop();
    } else {
      if (frameCount % 60 == 0 && time2 > 0) {
        time2--; // Kurangi time setiap 60 frame (sekitar 1 detik)
      }
    }

    // Tampilkan nilai time
    textSize(32);
    fill(255);
    text("TIME : " + time2, 55, -10);

    // Cek jika waktu telah habis
    if (time2 >= 20) {
      star(0);
      star(40);
      star(80);
    } else if (time2 >= 10 && time2 < 20) {
      star(40);
      star(80);
    } else if (time2 >= 5 && time2 < 10) {
      star(80);
    } else if (time1 == 0) {
      //time2=0;
      //noLoop(); // Berhenti dari looping draw() saat waktu habis
      time2 = 0;
    }

    if ((Kotak3X == 50 && Kotak3Y == 200) && (Kotak4X == 50 && Kotak4Y == 250) && (Kotak5X == 50 && Kotak5Y == 300)) {
      level = 3;
    } else if ((Kotak3X == 50 && Kotak3Y == 200) && (Kotak4X == 50 && Kotak4Y == 300) && (Kotak5X == 50 && Kotak5Y == 250)) {
      level = 3;
    } else if ((Kotak3X == 50 && Kotak3Y == 250) && (Kotak4X == 50 && Kotak4Y == 300) && (Kotak5X == 50 && Kotak5Y == 200)) {
      level = 3;
    } else if ((Kotak3X == 50 && Kotak3Y == 250) && (Kotak4X == 50 && Kotak4Y == 200) && (Kotak5X == 50 && Kotak5Y == 300)) {
      level = 3;
    } else if ((Kotak3X == 50 && Kotak3Y == 300) && (Kotak4X == 50 && Kotak4Y == 200) && (Kotak5X == 50 && Kotak5Y == 250)) {
      level = 3;
    } else if ((Kotak3X == 50 && Kotak3Y == 300) && (Kotak4X == 50 && Kotak4Y == 250) && (Kotak5X == 50 && Kotak5Y == 200)) {
      level = 3;
    }
    pop();
  }
}
