class credits {
  void display() {
    //bgmpause();
    //menang.play();
    background(0);
    
    // open chest
    noStroke();
    // kotak dasar
    fill(#AF5A25);
    rect(980, 410, 140, 55);
    fill(#672303);
    rect(1130, 410, 100, 55);
    // garis kuning
    fill(#E2B211);
    rect(970, 410, 10, 55);
    rect(1120, 410, 5, 55);
    //bayangan vertical
    fill(#D36E20);
    rect(1125, 410, 5, 55);
    rect(1220, 410, 10, 55);
    rect(1125, 460, 105, 10);
    rect(1125, 400, 105, 10);

    // tutup chest
    // samping
    fill(#AF5A25);
    quad(998, 308, 1169, 308, 1146, 326, 980, 326);
    // kanan
    fill(#672303);
    //quad(1155, 330, 1174, 315, 1243, 378, 1220, 400);
    triangle(1174, 315, 1232, 321, 1243, 379);
    // segitiga kanan
    push();
    fill(#D36E20);
    translate(1240, 312);
    rotate(radians(80));
    rect(0, 0, 70, 10);
    pop();

    // garis kuning
    fill(#E2B211);
    push();
    translate(965, 325);
    rotate(radians(45));
    rect(0, 0, 105, 10);
    pop();
    push();
    translate(993, 315);
    rotate(radians(140));
    rect(0, 0, 30, 10);
    pop();
    //garis horizontal di bawah
    rect(970, 460, 155, 10);
    rect(970, 400, 155, 10);
    rect(970, 326, 190, 10);

    // alas
    fill(#672303);
    rect(980, 470, 240, 10);
    triangle(977, 470, 980, 470, 980, 480);
    triangle(1215, 470, 1230, 470, 1220, 480);

    // bagian dalam chest
    fill(0);
    quad(975, 336, 1153, 336, 1216, 400, 1038, 400);
    //tutup kanan
    fill(#672303);
    quad(1155, 330, 1174, 315, 1243, 378, 1220, 400);

    // garis coklat horizontal
    fill(#551C02);
    quad(990, 308, 1040, 308, 1020, 326, 981, 326);
    quad(1158, 329, 1175, 315, 1192, 317, 1192, 363);
    quad(1145, 308, 1170, 308, 1149, 325, 1132, 325);
    rect(989, 305, 180, 5);
    rect(965, 400, 265, 5);
    // samping kiri
    push();
    translate(990, 308);
    rotate(radians(140));
    rect(0, 0, 45, 5);
    pop();
    // samping kiri bawah
    push();
    translate(956, 330);
    rotate(radians(45));
    rect(0, 0, 98, 5);
    pop();

    // garis coklat vertical
    rect(965, 400, 5, 60);
    rect(980, 410, 5, 50);
    rect(1115, 410, 5, 50);
    rect(1230, 400, 5, 70);

    // pinggir tutup kanan
    push();
    fill(#D36E20);
    translate(1253, 382);
    rotate(radians(140));
    rect(0, 0, 35, 10);
    pop();
    // pinggir tutup bawah
    push();
    fill(#D36E20);
    translate(1150, 325);
    rotate(radians(45));
    rect(0, 0, 115, 10);
    pop();

    // garis coklat tutup kanan
    push();
    translate(1258, 380);
    rotate(radians(140));
    rect(0, 0, 50, 5);
    pop();
    // tutup segitiga kanan
    push();
    translate(1244, 307);
    rotate(radians(80));
    rect(0, 0, 75, 5);
    pop();
    // tutup segitiga kiri
    push();
    translate(1171, 301);
    rotate(radians(5));
    rect(0, 0, 70, 5);
    pop();
    // garis coklat tutup kiri
    push();
    translate(1176, 303);
    rotate(radians(140));
    rect(0, 0, 48, 5);
    pop();
    push();
    translate(1140, 330);
    rotate(radians(45));
    rect(0, 0, 110, 5);
    pop();

    //shadow
    fill(#551C02);
    triangle(1130, 410, 1150, 410, 1130, 440);
    triangle(1130, 420, 1150, 460, 1130, 460);
    triangle(1200, 410, 1220, 410, 1220, 440);
    triangle(1200, 460, 1220, 430, 1220, 460);
    triangle(980, 410, 1000, 410, 980, 440);
    triangle(1100, 410, 1120, 410, 1120, 440);
    rect(980, 410, 130, 5);

    // garis bawah
    rect(980, 326, 160, 5);
    fill(#D36E20);
    push();
    translate(1175, 315);
    rotate(radians(140));
    rect(0, 0, 30, 10);
    pop();
    // segitiga kiri
    push();
    translate(1170, 306);
    rotate(radians(5));
    rect(0, 0, 70, 10);
    pop();

    //gembok
    fill(#E8DBD5);
    rect(1030, 400, 30, 20);
    arc(1045, 420, 30, 40, 0, PI);
    fill(255);
    rect(1030, 420, 30, 7);
    //lubang kunci
    fill(0);
    rect(1035, 410, 20, 5);
    rect(1042.5, 410, 5, 20);
    
    // Teks
    //text("Your Text Here", width/2, yCredits);
    push();
    {
      translate(0, yCredits);
      textAlign(CENTER, CENTER);
      fill(255, 0, 0);
      textSize(50);
      //text("Made by group 2(B1)", width/2, 0);
      text("Sokoban Tresure Hunt", width/2, 0);

      //textSize(40);
      //text("Made by group 2(B1)", width/2, 100);
      //textSize(30);
      push();
      {
        translate(width/2, 100);
        
        // Made by
        textSize(40);
        textAlign(CENTER, CENTER);
        text("Made by group 2(B1)", 0, 0);
        
        textSize(30); // Nama
        textAlign(RIGHT, CENTER);
        fill(255);
        text("Moh. Ikhwan Wahyudi", -30, 80);
        text("M. Dhimas Eko Wiyono", -30, 120);
        text("Maulana Muhammad Hafidz", -30, 160);
        text("Harlin Ajeng Ukirasih", -30, 200);
        
        textAlign(LEFT, CENTER); // Nim
        fill(255, 0, 0); 
        text("2109106066", 30, 80);
        text("2109106068", 30, 120);
        text("2109106070", 30, 160);
        text("2109106080", 30, 200);
        
        // Audio
        textSize(40);
        textAlign(CENTER, CENTER);
        text("Audio", 0, 300);
        
        textSize(30); // Penggunaannya
        textAlign(RIGHT, CENTER);
        fill(255);
        text("Menu Selection", -30, 380);
        text("Menu BGM", -30, 420);
        text("In Game BGM", -30, 460);
        text("Credits BGM", -30, 500);
        
        textAlign(LEFT, CENTER); // Nama Audio
        fill(255, 0, 0); 
        text("Fesliyanstudios - Menu Selection F", 30, 380);
        text("Assassin's Creed 4 Black Flag - Main Theme", 30, 420);
        text("Drunken Sailor Instrumental", 30, 460);
        text("Nathan Evans - Wellerman", 30, 500);
        
        // Image
        textSize(40);
        textAlign(CENTER, CENTER);
        text("Images", 0, 600);
        
        textSize(30); // Penggunaannya
        textAlign(RIGHT, CENTER);
        fill(255);
        text("Character image", -30, 680);
        text("Barrel image", -30, 720);
        text("Grass image", -30, 760);
        text("Crate image", -30, 800);
        text("Wall image", -30, 840);
        text("Chest image", -30, 880);
        text("Torch image", -30, 920);
        
        textAlign(LEFT, CENTER); // Sumber
        fill(255, 0, 0); 
        text("by pixelartm from OpenGameArt.org", 30, 680);
        text("by Hasymi from Flaticon.com", 30, 720);
        text("by Arkinasi from Flaticon.com", 30, 760);
        text("by IconBaandar from Flaticon.com", 30, 800);
        text("by zolotarevvya from Freepik.com", 30, 840);
        text("by Smashicons from Flaticon.com", 30, 880);
        text("by kosonicon from Flaticon.com", 30, 920);
        
        // Text Thank you
        textSize(80);
        textAlign(CENTER, CENTER);
        text("THANK YOU", 0, 1050);
      }
      pop();
    }
    pop();

    // Perbarui posisi Y teks setiap detik
    if (second() % 1 == 0) {
      yCredits = yCredits - speed; // Ubah kecepatan pergerakan di sini
    }

    // Reset posisi Y jika mencapai bagian atas
    //if (yCredits < -textAscent()) {
    //  yCredits = height;
    //}
    if (yCredits < -1180) {
      yCredits = height;
    }
  }
}
