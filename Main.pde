import processing.sound.*;
SoundFile selected;
//SoundFile bgm;
SoundFile pilih, play, menang;

PImage wall;
PImage box;
PImage grass;
PImage barrel;
PImage chestClose;
PImage torch;
PImage[] player = new PImage[4];


// untuk credits
float yCredits; // Variabel untuk menyimpan posisi Y teks credits
float speed = 0.9; // Kecepatan pergerakan teks

Menu menu = new Menu();
Stage1 stage1 = new Stage1();
Stage2 stage2 = new Stage2();
Stage3 stage3 = new Stage3();
FinalStage Fstage = new FinalStage();
credits credits = new credits();
Loading loading = new Loading();

// Loading
int w = 0;
int wait = 0;

// Player
int PlayerDirection = 0;

// STAGE 1
int PlayerX = 50;
int PlayerY = 50;

// STAGE 2
int Player2X = 100;
int Player2Y = 50;

// STAGE 3
int Player3X = 150;
int Player3Y = 50;

// FINAL STAGE 4
int Player4X = 0;
int Player4Y = 400;

// STAGE SIZE
int SizeX = 0;
int SizeY = 0;

// STAGE 1
int KotakX = 150;
int KotakY = 200;
int Kotak2X = 200;
int Kotak2Y = 350;

// STAGE 2
int Kotak3X = 250;
int Kotak3Y = 150;
int Kotak4X = 250;
int Kotak4Y = 250;
int Kotak5X = 150;
int Kotak5Y = 150;


// STAGE 3
int Kotak6X = 200;
int Kotak6Y = 200;
int Kotak7X = 150;
int Kotak7Y = 100;
int Kotak8X = 100;
int Kotak8Y = 150;

int level = 0;
int time1 = 40;
int time2 = 30;
int time3 = 20;

int StarX = 300;
int StarY = -25;

color StartButton = color(255, 0, 0);
color NButton = color(255);
color QuitButton = color(255);

boolean isMenu = true;
boolean isPause = false;

float currentVolume = 1.0; // Volume awal (maksimum)

// fade out audio
void fadeOut() {
  if (currentVolume > 0) {
    currentVolume -= 0.02; // Atur kecepatan fade-out di sini
    play.amp(currentVolume);
  } else {
    play.pause(); // Pause audio setelah fade-out selesai
  }
}

// Pause audio
void bgmpause() {
  pilih.pause();
  play.pause();
  menang.pause();
}

void setup() {
  size(1300, 700, P3D);
  wall = loadImage("Images/wall.png");
  box = loadImage("Images/box.png");
  grass = loadImage("Images/grass1.png");
  barrel = loadImage("Images/barrel.png");
  chestClose = loadImage("Images/chestClose.png");
  torch = loadImage("Images/torch.png");
  player[0] = loadImage("Images/player0.png"); // bawah
  player[1] = loadImage("Images/player1.png"); // atas
  player[2] = loadImage("Images/player2.png"); // kanan
  player[3] = loadImage("Images/player3.png"); // kiri
  textSize(32);

  selected = new SoundFile(this, "Audio/selected.mp3");
  pilih = new SoundFile(this, "Audio/menu.mp3");
  play = new SoundFile(this, "Audio/play.mp3");
  menang = new SoundFile(this, "Audio/win.mp3");

  yCredits = height; // Mulai dari posisi bawah layar
}

void keyReleased() {
  if (!isMenu) {
    if (keyCode == ' ') {
      isPause = !isPause;
    }
    if (!isPause) {
      if (key == 'r' || key == 'R') {
        // Reset level
        if (level == 1) {
          PlayerX = 50;
          PlayerY = 50;
          KotakX = 150;
          KotakY = 200;
          Kotak2X = 200;
          Kotak2Y = 350;
        } else if (level == 2) {
          Player2X = 100;
          Player2Y = 50;
          Kotak3X = 250;
          Kotak3Y = 150;
          Kotak4X = 250;
          Kotak4Y = 250;
          Kotak5X = 150;
          Kotak5Y = 150;
        } else if (level == 3) {
          Player3X = 150;
          Player3Y = 50;
          Kotak6X = 200;
          Kotak6Y = 200;
          Kotak7X = 150;
          Kotak7Y = 100;
          Kotak8X = 100;
          Kotak8Y = 150;
        }
      }

      // =====Key Level 1=====
      if (level == 1) {
        if (keyCode == DOWN) {
          PlayerDirection = 0;
          if (PlayerY == (SizeY - 100)) {
          } else {
            if (PlayerY == (KotakY - 50) && KotakX == PlayerX) {
              if (KotakY == (SizeY - 100)) {
              } else {
                if (Kotak2Y == (KotakY + 50) && Kotak2X == KotakX) {
                } else {
                  PlayerY += 50;
                  KotakY += 50;
                }
              }
            } else if (PlayerY == (Kotak2Y - 50) && Kotak2X == PlayerX) {
              if (Kotak2Y == (SizeY - 100)) {
              } else {
                if (KotakY == (Kotak2Y + 50) && KotakX == Kotak2X) {
                } else {
                  PlayerY += 50;
                  Kotak2Y += 50;
                }
              }
            } else {
              PlayerY += 50;
            }
          }
        } else if (keyCode == UP) {
          PlayerDirection = 1;
          if (PlayerY == 50) {
          } else {
            if (PlayerY == (KotakY + 50) && KotakX == PlayerX) {
              if (KotakY == 50) {
              } else {
                if (Kotak2Y == (KotakY - 50) && Kotak2X == KotakX) {
                } else {
                  PlayerY -= 50;
                  KotakY -= 50;
                }
              }
            } else if (PlayerY == (Kotak2Y + 50) && Kotak2X == PlayerX) {
              if (Kotak2Y == 50) {
              } else {
                if (KotakY == (Kotak2Y - 50) && KotakX == Kotak2X) {
                } else {
                  PlayerY -= 50;
                  Kotak2Y -= 50;
                }
              }
            } else {
              PlayerY -= 50;
            }
          }
        } else if (keyCode == RIGHT) {
          PlayerDirection = 2;
          if (PlayerX == (SizeX-100)) {
          } else {
            if (PlayerX == (KotakX - 50) && KotakY == PlayerY) {
              if (KotakX == (SizeX-100)) {
              } else {
                if (Kotak2X == (KotakX + 50) && Kotak2Y == KotakY) {
                } else {
                  PlayerX += 50;
                  KotakX += 50;
                }
              }
            } else if (PlayerX == (Kotak2X - 50) && Kotak2Y == PlayerY) {
              if (Kotak2X == (SizeX-100)) {
              } else {
                if (KotakX == (Kotak2X + 50) && KotakY == Kotak2Y) {
                } else {
                  PlayerX += 50;
                  Kotak2X += 50;
                }
              }
            } else {
              PlayerX += 50;
            }
          }
        } else if (keyCode == LEFT) {
          PlayerDirection = 3;
          if (PlayerX == 50) {
          } else {
            if (PlayerX == (KotakX + 50) && KotakY == PlayerY) {
              if (KotakX == 50) {
              } else {
                if (Kotak2X == (KotakX - 50) && Kotak2Y == KotakY) {
                } else {
                  PlayerX -= 50;
                  KotakX -= 50;
                }
              }
            } else if (PlayerX == (Kotak2X + 50) && Kotak2Y == PlayerY) {
              if (Kotak2X == 50) {
              } else {
                if (KotakX == (Kotak2X - 50) && KotakY == Kotak2Y) {
                } else {
                  PlayerX -= 50;
                  Kotak2X -= 50;
                }
              }
            } else {
              PlayerX -= 50;
            }
          }
        } else if (keyCode == BACKSPACE) {
          //bgmpause();
          //pilih.play();
          pilih.loop();
          isMenu = true;
          level = 0;
        }
      }

      // =====Key Level 2=====
      else if (level == 2) {
        if (keyCode == DOWN) {
          PlayerDirection = 0;
          if (Player2Y == (SizeY - 100)) {
          } else if (Player2Y == 100 && (Player2X == 100 || Player2X == 200)) {
          } else {
            if (Player2Y == (Kotak3Y - 50) && Kotak3X == Player2X) {
              if (Kotak3Y == (SizeY - 100)) {
              } else if (Kotak3Y == 100 && (Kotak3X == 100 || Kotak3X == 200)) {
              } else {
                if (Kotak4Y == (Kotak3Y + 50) && Kotak4X == Kotak3X) {
                } else if (Kotak5Y == (Kotak3Y + 50) && Kotak5X == Kotak3X) {
                } else {
                  Player2Y += 50;
                  Kotak3Y += 50;
                }
              }
            } else if (Player2Y == (Kotak4Y - 50) && Kotak4X == Player2X) {
              if (Kotak4Y == (SizeY - 100)) {
              } else if (Kotak4Y == 100 && (Kotak4X == 100 || Kotak4X == 200)) {
              } else {
                if (Kotak3Y == (Kotak4Y + 50) && Kotak3X == Kotak4X) {
                } else if (Kotak5Y == (Kotak4Y + 50) && Kotak4X == Kotak5X) {
                } else {
                  Player2Y += 50;
                  Kotak4Y += 50;
                }
              }
            } else if (Player2Y == (Kotak5Y - 50) && Kotak5X == Player2X) {
              if (Kotak5Y == (SizeY - 100)) {
              } else if (Kotak5Y == 100 && (Kotak5X == 100 || Kotak5X == 200)) {
              } else {
                if (Kotak3Y == (Kotak5Y + 50) && Kotak3X == Kotak5X) {
                } else if (Kotak4Y == (Kotak5Y + 50) && Kotak4X == Kotak5X) {
                } else {
                  Player2Y += 50;
                  Kotak5Y += 50;
                }
              }
            } else {
              Player2Y += 50;
            }
          }
        } else if (keyCode == UP) {
          PlayerDirection = 1;
          if (Player2Y == 50) {
          } else if (Player2Y == 200 && (Player2X == 50 || Player2X == 100 || Player2X == 300)) {
          } else if (Player2Y == 100 && (Player2X == 200 || Player2X == 250)) {
          } else if (Player2Y == 250 && Player2X == 200) {
          } else {
            if (Player2Y == (Kotak3Y + 50) && Kotak3X == Player2X) {
              if (Kotak3Y == 50) {
              } else if (Kotak3Y == 200 && (Kotak3X == 50 || Kotak3X == 100 || Kotak3X == 300)) {
              } else if (Kotak3Y == 100 && (Kotak3X == 200 || Kotak3X == 250)) {
              } else if (Kotak3Y == 250 && Kotak3X == 200) {
              } else {
                if (Kotak4Y == (Kotak3Y - 50) && Kotak4X == Kotak3X) {
                } else if (Kotak5Y == (Kotak3Y - 50) && Kotak5X == Kotak3X) {
                } else {
                  Player2Y -= 50;
                  Kotak3Y -= 50;
                }
              }
            } else if (Player2Y == (Kotak4Y + 50) && Kotak4X == Player2X) {
              if (Kotak4Y == 50) {
              } else if (Kotak4Y == 200 && (Kotak4X == 50 || Kotak4X == 100 || Kotak4X == 300)) {
              } else if (Kotak4Y == 100 && (Kotak4X == 200 || Kotak4X == 250)) {
              } else if (Kotak4Y == 250 && Kotak4X == 200) {
              } else {
                if (Kotak3Y == (Kotak4Y - 50) && Kotak3X == Kotak4X) {
                } else if (Kotak5Y == (Kotak4Y - 50) && Kotak5X == Kotak4X) {
                } else {
                  Player2Y -= 50;
                  Kotak4Y -= 50;
                }
              }
            } else if (Player2Y == (Kotak5Y + 50) && Kotak5X == Player2X) {
              if (Kotak5Y == 50) {
              } else if (Kotak5Y == 200 && (Kotak5X == 50 || Kotak5X == 100 || Kotak5X == 300)) {
              } else if (Kotak5Y == 100 && (Kotak5X == 200 || Kotak5X == 250)) {
              } else if (Kotak5Y == 250 && Kotak5X == 200) {
              } else {
                if (Kotak3Y == (Kotak5Y - 50) && Kotak3X == Kotak5X) {
                } else if (Kotak4Y == (Kotak5Y - 50) && Kotak4X == Kotak5X) {
                } else if (Kotak5Y == (Kotak3Y - 50) && Kotak5X == Kotak3X) {
                } else {
                  Player2Y -= 50;
                  Kotak5Y -= 50;
                }
              }
            } else {
              Player2Y -= 50;
            }
          }
        } else if (keyCode == RIGHT) {
          PlayerDirection = 2;
          if (Player2X == (SizeX-100)) {
          } else if ((Player2X == 250 || Player2X == 150) && Player2Y == 150) {
          } else if (Player2X == 250 && Player2Y == 100) {
          } else if (Player2X == 150 && Player2Y == 50) {
          } else if (Player2X == 150 && Player2Y == 200) {
          } else {
            if (Player2X == (Kotak3X - 50) && Kotak3Y == Player2Y) {
              if (Kotak3X == (SizeX-100)) {
              } else if ((Kotak3X == 250 || Kotak3X == 150) && Kotak3Y == 150) {
              } else if (Kotak3X == 250 && Kotak3Y == 100) {
              } else if (Kotak3X == 150 && Kotak3Y == 50) {
              } else if (Kotak3X == 150 && Kotak3Y == 200) {
              } else {
                if (Kotak4X == (Kotak3X + 50) && Kotak4Y == Kotak3Y) {
                } else if (Kotak5X == (Kotak3X + 50) && Kotak5Y == Kotak3Y) {
                } else {
                  Player2X += 50;
                  Kotak3X += 50;
                }
              }
            } else if (Player2X == (Kotak4X - 50) && Kotak4Y == Player2Y) {
              if (Kotak4X == (SizeX-100)) {
              } else if ((Kotak4X == 250 || Kotak4X == 150) && Kotak4Y == 150) {
              } else if (Kotak4X == 250 && Kotak4Y == 100) {
              } else if (Kotak4X == 150 && Kotak4Y == 50) {
              } else if (Kotak4X == 150 && Kotak4Y == 200) {
              } else {
                if (Kotak3X == (Kotak4X + 50) && Kotak3Y == Kotak4Y) {
                } else if (Kotak5X == (Kotak4X + 50) && Kotak5Y == Kotak4Y) {
                } else {
                  Player2X += 50;
                  Kotak4X += 50;
                }
              }
            } else if (Player2X == (Kotak5X - 50) && Kotak5Y == Player2Y) {
              if (Kotak5X == (SizeX-100)) {
              } else if ((Kotak5X == 250 || Kotak5X == 150) && Kotak5Y == 150) {
              } else if (Kotak5X == 250 && Kotak5Y == 100) {
              } else if (Kotak5X == 150 && Kotak5Y == 50) {
              } else if (Kotak5X == 150 && Kotak5Y == 200) {
              } else {
                if (Kotak3X == (Kotak5X + 50) && Kotak3Y == Kotak5Y) {
                } else if (Kotak4X == (Kotak5X + 50) && Kotak4Y == Kotak5Y) {
                } else {
                  Player2X += 50;
                  Kotak5X += 50;
                }
              }
            } else {
              Player2X += 50;
            }
          }
        } else if (keyCode == LEFT) {
          PlayerDirection = 3;
          if (Player2X == 50) {
          } else if (Player2X == 100 && (Player2Y == 50 || Player2Y == 100)) {
          } else if ((Player2X == 250 || Player2X == 150) && Player2Y == 150) {
          } else if (Player2X == 250 && Player2Y == 200) {
          } else {
            if (Player2X == (Kotak3X + 50) && Kotak3Y == Player2Y) {
              if (Kotak3X == 50) {
              } else if (Kotak3X == 100 && (Kotak3Y == 50 || Kotak3Y == 100)) {
              } else if ((Kotak3X == 250 || Kotak3X == 150) && Kotak3Y == 150) {
              } else if (Kotak3X == 250 && Kotak3Y == 200) {
              } else {
                if (Kotak4X == (Kotak3X - 50) && Kotak4Y == Kotak3Y) {
                } else if (Kotak5X == (Kotak3X - 50) && Kotak5Y == Kotak3Y) {
                } else {
                  Player2X -= 50;
                  Kotak3X -= 50;
                }
              }
            } else if (Player2X == (Kotak4X + 50) && Kotak4Y == Player2Y) {
              if (Kotak4X == 50) {
              } else if (Kotak4X == 100 && (Kotak4Y == 50 || Kotak4Y == 100)) {
              } else if ((Kotak4X == 250 || Kotak4X == 150) && Kotak4Y == 150) {
              } else if (Kotak4X == 250 && Kotak4Y == 200) {
              } else {
                if (Kotak3X == (Kotak4X - 50) && Kotak3Y == Kotak4Y) {
                } else if (Kotak5X == (Kotak4X - 50) && Kotak5Y == Kotak4Y) {
                } else {
                  Player2X -= 50;
                  Kotak4X -= 50;
                }
              }
            } else if (Player2X == (Kotak5X + 50) && Kotak5Y == Player2Y) {
              if (Kotak5X == 50) {
              } else if (Kotak5X == 100 && (Kotak5Y == 50 || Kotak5Y == 100)) {
              } else if ((Kotak5X == 250 || Kotak5X == 150) && Kotak5Y == 150) {
              } else if (Kotak5X == 250 && Kotak5Y == 200) {
              } else {
                if (Kotak3X == (Kotak5X - 50) && Kotak3Y == Kotak5Y) {
                } else if (Kotak4X == (Kotak5X - 50) && Kotak4Y == Kotak5Y) {
                } else {
                  Player2X -= 50;
                  Kotak5X -= 50;
                }
              }
            } else {
              Player2X -= 50;
            }
          }
        } else if (keyCode == BACKSPACE) {
          pilih.loop();
          isMenu = true;
          level = 0;
        }
      }

      // =====Key Level 3=====
      else if (level == 3) {
        if (keyCode == DOWN) {
          PlayerDirection = 0;
          if (Player3Y == (SizeY - 100)) {
          } else {
            if (Player3Y == (Kotak6Y - 50) && Kotak6X == Player3X) {
              if (Kotak6Y == (SizeY - 100)) {
              } else {
                if (Kotak7Y == (Kotak6Y + 50) && Kotak7X == Kotak6X) {
                } else if (Kotak8Y == (Kotak6Y + 50) && Kotak8X == Kotak6X) {
                } else {
                  Player3Y += 50;
                  Kotak6Y += 50;
                }
              }
            } else if (Player3Y == (Kotak7Y - 50) && Kotak7X == Player3X) {
              if (Kotak7Y == (SizeY - 100)) {
              } else {
                if (Kotak6Y == (Kotak7Y + 50) && Kotak6X == Kotak7X) {
                } else if (Kotak8Y == (Kotak7Y + 50) && Kotak8X == Kotak7X) {
                } else {
                  Player3Y += 50;
                  Kotak7Y += 50;
                }
              }
            } else if (Player3Y == (Kotak8Y - 50) && Kotak8X == Player3X) {
              if (Kotak7Y == (SizeY - 100)) {
              } else {
                if (Kotak6Y == (Kotak8Y + 50) && Kotak6X == Kotak8X) {
                } else if (Kotak7Y == (Kotak8Y + 50) && Kotak7X == Kotak8X) {
                } else {
                  Player3Y += 50;
                  Kotak8Y += 50;
                }
              }
            } else {
              Player3Y += 50;
            }
          }
        } else if (keyCode == UP) {
          PlayerDirection = 1;
          if (Player3Y == 50) {
          } else if (Player3Y == 150 && (Player3X == 50 || Player3X == 100)) {
          } else if (Player3Y == 100 && Player3X == 200) {
          } else {
            if (Player3Y == (Kotak6Y + 50) && Kotak6X == Player3X) {
              if (Kotak6Y == 50) {
              } else if (Kotak6Y == 150 && (Kotak6X == 50 || Kotak6X == 100)) {
              } else if (Kotak6Y == 100 && Kotak6X == 200) {
              } else {
                if (Kotak7Y == (Kotak6Y - 50) && Kotak7X == Kotak6X) {
                } else if (Kotak8Y == (Kotak6Y - 50) && Kotak8X == Kotak6X) {
                } else {
                  Player3Y -= 50;
                  Kotak6Y -= 50;
                }
              }
            } else if (Player3Y == (Kotak7Y + 50) && Kotak7X == Player3X) {
              if (Kotak7Y == 50) {
              } else if (Kotak7Y == 150 && (Kotak7X == 50 || Kotak7X == 100)) {
              } else if (Kotak7Y == 100 && Kotak7X == 200) {
              } else {
                if ((Kotak6Y == (Kotak7Y - 50)) && Kotak6X == Kotak7X) {
                } else if ((Kotak8Y == (Kotak7Y - 50)) && Kotak7X == Kotak8X) {
                } else {
                  Player3Y -= 50;
                  Kotak7Y -= 50;
                }
              }
            } else if (Player3Y == (Kotak8Y + 50) && Kotak8X == Player3X) {
              if (Kotak8Y == 50) {
              } else if (Kotak8Y == 150 && (Kotak8X == 50 || Kotak8X == 100)) {
              } else if (Kotak8Y == 100 && Kotak8X == 200) {
              } else {
                if (Kotak6Y == (Kotak8Y - 50) && Kotak6X == Kotak8X) {
                } else if (Kotak7Y == (Kotak8Y - 50) && Kotak7X == Kotak8X) {
                } else {
                  Player3Y -= 50;
                  Kotak8Y -= 50;
                }
              }
            } else {
              Player3Y -= 50;
            }
          }
        } else if (keyCode == RIGHT) {
          PlayerDirection = 2;
          if (Player3X == (SizeX-100)) {
          } else if (Player3Y == 50 && Player3X == 150) {
          } else {
            if (Player3X == (Kotak6X - 50) && Kotak6Y == Player3Y) {
              if (Kotak6X == (SizeX-100)) {
              } else if (Kotak6Y == 50 && Kotak6X == 150) {
              } else {
                if (Kotak7X == (Kotak6X + 50) && Kotak7Y == Kotak6Y) {
                } else if (Kotak8X == (Kotak6X + 50) && Kotak8Y == Kotak6Y) {
                } else {
                  Player3X += 50;
                  Kotak6X += 50;
                }
              }
            } else if (Player3X == (Kotak7X - 50) && Kotak7Y == Player3Y) {
              if (Kotak7X == (SizeX-100)) {
              } else if (Kotak7Y == 50 && Kotak7X == 150) {
              } else {
                if (Kotak6X == (Kotak7X + 50) && Kotak6Y == Kotak7Y) {
                } else if (Kotak8X == (Kotak7X + 50) && Kotak8Y == Kotak7Y) {
                } else {
                  Player3X += 50;
                  Kotak7X += 50;
                }
              }
            } else if (Player3X == (Kotak8X - 50) && Kotak8Y == Player3Y) {
              if (Kotak8X == (SizeX-100)) {
              } else if (Kotak8Y == 50 && Kotak8X == 150) {
              } else {
                if (Kotak6X == (Kotak8X + 50) && Kotak6Y == Kotak8Y) {
                } else if (Kotak7X == (Kotak8X + 50) && Kotak7Y == Kotak8Y) {
                } else {
                  Player3X += 50;
                  Kotak8X += 50;
                }
              }
            } else {
              Player3X += 50;
            }
          }
        } else if (keyCode == LEFT) {
          PlayerDirection = 3;
          if (Player3X == 50) {
          } else if (Player3X == 150 && (Player3Y == 50 || Player3Y == 100)) {
          } else if (Player3X == 250 && Player3Y == 50) {
          } else {
            if (Player3X == (Kotak6X + 50) && Kotak6Y == Player3Y) {
              if (Kotak6X == 50) {
              } else if (Kotak6X == 150 && (Kotak6Y == 50 || Kotak6Y == 100)) {
              } else if (Kotak6X == 250 && Kotak6Y == 50) {
              } else {
                if (Kotak7X == (Kotak6X - 50) && Kotak7Y == Kotak6Y) {
                } else if (Kotak8X == (Kotak6X - 50) && Kotak8Y == Kotak6Y) {
                } else {
                  Player3X -= 50;
                  Kotak6X -= 50;
                }
              }
            } else if (Player3X == (Kotak7X + 50) && Kotak7Y == Player3Y) {
              if (Kotak7X == 50) {
              } else if (Kotak7X == 150 && (Kotak7Y == 50 || Kotak7Y == 100)) {
              } else if (Kotak7X == 250 && Kotak7Y == 50) {
              } else {
                if (Kotak6X == (Kotak7X - 50) && Kotak6Y == Kotak7Y) {
                } else if (Kotak8X == (Kotak7X - 50) && Kotak8Y == Kotak7Y) {
                } else {
                  Player3X -= 50;
                  Kotak7X -= 50;
                }
              }
            } else if (Player3X == (Kotak8X + 50) && Kotak8Y == Player3Y) {
              if (Kotak8X == 50) {
              } else if (Kotak8X == 150 && (Kotak8Y == 50 || Kotak8Y == 100)) {
              } else if (Kotak8X == 250 && Kotak8Y == 50) {
              } else {
                if (Kotak6X == (Kotak8X - 50) && Kotak6Y == Kotak8Y) {
                } else if (Kotak7X == (Kotak8X - 50) && Kotak7Y == Kotak8Y) {
                } else {
                  Player3X -= 50;
                  Kotak8X -= 50;
                }
              }
            } else {
              Player3X -= 50;
            }
          }
        } else if (keyCode == BACKSPACE) {
          pilih.loop();
          isMenu = true;
          level = 0;
        }
      }

      // =====Key Level 4 (FINAL)=====
      else if (level == 4) {
        if (keyCode == BACKSPACE) {
          pilih.loop();
          isMenu = true;
          level = 0;
        } else if (keyCode == UP) {
          PlayerDirection = 1;
          if (Player4X <= 400 && Player4Y == 400) {
          } else if (Player4X >= 450 && Player4Y == 200) {
          } else if (Player4X == 700 && Player4Y == 250) {
          } else if (Player4X >= 750 && Player4Y == 200) {
          } else {
            Player4Y -= 50;
          }
        } else if (keyCode == DOWN) {
          PlayerDirection = 0;
          if (Player4X <= 400 && Player4Y == 400) {
          } else if (Player4X >= 450 && Player4Y == 550) {
          } else {
            Player4Y += 50;
          }
        } else if (keyCode == LEFT) {
          PlayerDirection = 3;
          if (Player4X == 0) {
          } else if (Player4X == 450 && Player4Y >= 450) {
          } else if (Player4X == 450 && Player4Y <= 350) {
          } else if (Player4X == 750 && Player4Y == 200) {
          } else {
            Player4X -= 50;
          }
        } else if (keyCode == RIGHT) {
          PlayerDirection = 2;
          if (Player4X == 950) {
          } else if (Player4X == 650 && Player4Y == 200) {
          } else {
            Player4X += 50;
          }
        } else if (keyCode == ENTER) {
          if (Player4X == 700 && Player4Y == 250 || Player4X == 650 && Player4Y == 200 || Player4X == 750 && Player4Y == 200) {
            menang.play();
            menang.loop();
            
            isMenu = false;
            level = 5;

            yCredits = height;
          }
        }
      }

      // =====Key Level 5 (credits)=====
      else if (level == 5) {
        if (keyCode == BACKSPACE) {
          pilih.loop();
          isMenu = true;
          level = 0;
        }
      }
    } else if (isPause || time1 == 0 || time2 == 0 || time3 == 0) {
    }
  } else {
    if (keyCode == DOWN) {
      selected.play();
      if (StartButton == color(255, 0, 0)) {
        StartButton = color(255);
        NButton = color(255, 0, 0);
        QuitButton = color(255);
      } else if (NButton == color(255, 0, 0)) {
        StartButton = color(255);
        NButton = color(255);
        QuitButton = color(255, 0, 0);
      } else if (QuitButton == color(255, 0, 0)) {
        StartButton = color(255, 0, 0);
        NButton = color(255);
        QuitButton = color(255);
      }
    } else if (keyCode == UP) {
      selected.play();
      if (StartButton == color(255, 0, 0)) {
        StartButton = color(255);
        NButton = color(255);
        QuitButton = color(255, 0, 0);
      } else if (NButton == color(255, 0, 0)) {
        StartButton = color(255, 0, 0);
        NButton = color(255);
        QuitButton = color(255);
      } else if (QuitButton == color(255, 0, 0)) {
        StartButton = color(255);
        NButton = color(255, 0, 0);
        QuitButton = color(255);
      }
    }
    if (keyCode == ENTER) {
      if (StartButton == color(255, 0, 0)) {
        isMenu = false;
        level = 6;
        //level = 1;
        
        //Audio
        bgmpause();
        play.play();
        play.loop();
        currentVolume = 1.0; // Reset volume audio
        play.amp(currentVolume);

        // Reset Level 1
        PlayerX = 50;
        PlayerY = 50;
        KotakX = 150;
        KotakY = 200;
        Kotak2X = 200;
        Kotak2Y = 350;

        // Reset Level 2
        Player2X = 100;
        Player2Y = 50;
        Kotak3X = 250;
        Kotak3Y = 150;
        Kotak4X = 250;
        Kotak4Y = 250;
        Kotak5X = 150;
        Kotak5Y = 150;

        // Reset Level 3
        Player3X = 150;
        Player3Y = 50;
        Kotak6X = 200;
        Kotak6Y = 200;
        Kotak7X = 150;
        Kotak7Y = 100;
        Kotak8X = 100;
        Kotak8Y = 150;
        
        w = 0; // reset loading

        // Reset Final Stage
        Player4X = 0;
        Player4Y = 400;

        // Reset Timer
        time1 = 40;
        time2 = 30;
        time3 = 20;
      } else if (NButton == color(255, 0, 0)) {
        // Credits
        bgmpause();
        menang.play();
        menang.loop();
        isMenu = false;
        level = 5;

        yCredits = height;
      } else if (QuitButton == color(255, 0, 0)) {
        exit();
      }
    }
  }
}


void draw() {
  background(255);
  if (level == 0) {
    //loading.display();
    bgmpause();
    pilih.play();
    menu.display();
  } else if (level == 1) {
    SizeX = 400;
    SizeY = 500;
    stage1.display();
  } else if (level == 2) {
    SizeX = 400;
    SizeY = 400;
    stage2.display();
  } else if (level == 3) {
    SizeX = 350;
    SizeY = 350;
    stage3.display();
  } else if (level == 4) {
    Fstage.display();
  } else if (level == 5) {
    //bgmpause();
    //menang.play();
    credits.display();
  } else if (level == 6) {
    loading.display();
  }  
}
