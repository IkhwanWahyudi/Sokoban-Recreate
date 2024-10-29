class Stage3 {
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
    background(0);
    
    push();
    //========== Lantai ==========
    translate(400, 200);
    stroke(0, 0, 0, 20);
    fill(73, 85, 138);
    for (int x = -50; x < 400; x += 50) {
      for (int y = 0; y < 400; y += 50) {
        square(x, y, 50);
      }
    }
    
    //lantai kanan
    for (int x = 400; x < 900; x += 50) {
      square(x, 200, 50);
    }
    
    //lantai kiri
    for (int x = -400; x < -50; x += 50) {
      square(x, 200, 50);
    }
    
    //========== DINDING ==========
    stroke(0);
    // Menggambar tembok di bagian atas
    for (int x = 100; x < 300; x += 50) {
      image(barrel, x, 0, 50, 50);
    }
    
    // Menggambar tembok di bagian bawah
    for (int x = 0; x < 300; x += 50) {
      image(barrel, x, 300, 50, 50);
    }

    // Menggambar tembok di sisi kiri
    //for (int y = 0; y <= 100; y += 50) {
    //  image(barrel, 100, y, 50, 50);
    //}
    for (int y = 100; y <= 300; y += 50) {
      image(barrel, 0, y, 50, 50);
    }

    // Menggambar tembok di sisi kanan
    for (int y = 0; y <= 300; y += 50) {
      image(barrel, 300, y, 50, 50);
    }

    image(barrel, 100, 100, 50, 50);
    image(barrel, 100, 50, 50, 50);
    image(barrel, 50, 100, 50, 50);
    image(barrel, 200, 50, 50, 50);
    
    fill(200);
    // kiri
    for (int x = -400; x < -50; x += 50) {
      image(wall, x, 100, 50, 100);
      square(x, 50, 50);
      square(x, 250, 50);
    }
    
    // kanan
    for (int x = 400; x < 900; x += 50) {
      image(wall, x, 100, 50, 100);
      square(x, 50, 50);
      square(x, 250, 50);
    }
    
    // atas
    for (int x = -50; x < 400; x += 50) {
      image(wall, x, -100, 50, 100);
      square(x, -150, 50);
    }
    
    // bawah
    for (int x = -50; x < 400; x += 50) {
      image(wall, x, -100, 50, 100);
      square(x, 400, 50);
    }
    
    // batas kiri atas
    for (int y = -150; y < 100; y += 50) {
      square(-100, y, 50);
    }
    
    // batas kiri bawah
    for (int y = 300; y < 450; y += 50) {
      square(-100, y, 50);
    }
    
    // batas kanan atas
    for (int y = -150; y < 100; y += 50) {
      square(400, y, 50);
    }
    
    // batas kanan bawah
    for (int y = 300; y < 450; y += 50) {
      square(400, y, 50);
    }

    noStroke();
    fill(0, 255, 0, 80);
    rect(100, 200, 50, 50);
    rect(250, 200, 50, 50);
    rect(200, 100, 50, 50);

    stroke(1);
    fill(0);
    //square(Kotak6X, Kotak6Y, 50);
    image(box, Kotak6X, Kotak6Y, 50, 50);
    //square(Kotak7X, Kotak7Y, 50);
    image(box, Kotak7X, Kotak7Y, 50, 50);
    //square(Kotak8X, Kotak8Y, 50);
    image(box, Kotak8X, Kotak8Y, 50, 50);

    image(player[PlayerDirection], Player3X, Player3Y, 50, 50);

    if (isPause) {
      push();
      translate(0, 0, 1);
      stroke(0);
      fill(200);
      rect(0, 0, 350, 350);
      fill(0);
      textSize(50);
      text("PAUSE", 175, 175);
      pop();
    } else {
      if (frameCount % 60 == 0 && time3 > 0) {
        time3--; // Kurangi time setiap 60 frame (sekitar 1 detik)
      }
    }
  
    // Tampilkan nilai time
    textSize(32);
    fill(255);
    text("TIME : " + time3, 55, -10);

    // Cek jika waktu telah habis
    if (time3 >= 15){
      star(-50);
      star(-10);
      star(30);
    } else if (time3 >= 10 && time3 < 15){
      star(-10);
      star(30);
    } else if (time3 >= 5 && time3 < 10){
      star(30);
    } else if (time3 == 0) {
      time3 = 0;
      //noLoop(); // Berhenti dari looping draw() saat waktu habis
    }

    if ((Kotak6X == 100 && Kotak6Y == 200) && (Kotak7X == 250 && Kotak7Y == 200) && (Kotak8X == 200 && Kotak8Y == 100)) {
      level = 4;
    } else if ((Kotak6X == 100 && Kotak6Y == 200) && (Kotak7X == 200 && Kotak7Y == 100) && (Kotak8X == 250 && Kotak8Y == 200)) {
      level = 4;
    } else if ((Kotak6X == 200 && Kotak6Y == 100) && (Kotak7X == 100 && Kotak7Y == 200) && (Kotak8X == 250 && Kotak8Y == 200)) {
      level = 4;
    } else if ((Kotak6X == 200 && Kotak6Y == 100) && (Kotak7X == 250 && Kotak7Y == 200) && (Kotak8X == 100 && Kotak8Y == 200)) {
      level = 4;
    } else if ((Kotak6X == 250 && Kotak6Y == 200) && (Kotak7X == 100 && Kotak7Y == 200) && (Kotak8X == 200 && Kotak8Y == 100)) {
      level = 4;
    } else if ((Kotak6X == 250 && Kotak6Y == 200) && (Kotak7X == 200 && Kotak7Y == 100) && (Kotak8X == 100 && Kotak8Y == 200)) {
      level = 4;
    }
    pop();
  }
}
