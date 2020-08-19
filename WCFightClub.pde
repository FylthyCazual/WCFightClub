PFont pixel;

int phase = 0;

PImage sultanP;
PImage andresP;
PImage a2lp;
PImage fenp;

PImage p1i;
PImage p2i;

PImage stage;

int hp1;
int hp2;

int stageId = 0;

boolean hit1;
boolean hit2;

double meter1 = 0;
double meter2 = 0;
boolean meterOn1;
boolean meterOn2;
boolean guard1;
boolean guard2;

int p1x;
int p1y;

int p2x;
int p2y;

int prox1;
int proy1;
int prox2;
int proy2;
int prot1;
int prot2;

int id1;
int id2;

int timer1 = 0;
int timer12 = 0;
int air1;
int stun1;
int timer2 = 0;
int timer22;
int air2;
int stun2;

boolean W;
boolean A;
boolean S;
boolean D;
boolean tab;
boolean Q;

boolean P;
boolean L;
boolean semi;
boolean apos;
boolean rb;
boolean bs;

boolean ready1;
boolean ready2;

void setup(){
  colorMode(RGB);
  size(720,460);
  strokeWeight(0);
   p1x = 40;
   p1y = 100;
   p2x = 680;
   p2y = 100;
   sultanP = loadImage("sultanP.png");
   andresP = loadImage("andresP.png");
   a2lp = loadImage("a2lP.png");
   fenp = loadImage("fen.png");
   pixel = createFont("Five Nights at Freddy's",10);
   textFont(pixel);
}

void keyPressed() {
  switch (key) {
    case ESC:
    key = 0;
    break;
  }
  if (keyCode==87) {
    W=true;
  } else if (keyCode==65) {
    A=true;
  } else if (keyCode==83) {
    S=true;
  } else if (keyCode==68) {
    D=true;
  } else if (keyCode==80) {
    P=true;
  } else if (keyCode==9){
    tab = true;
  } else if (keyCode==81){
    Q = true;
  } else if (keyCode==76) {
    L=true;
  } else if (keyCode==59) {
    semi=true;
  } else if (keyCode==222) {
    apos=true;
  } else if (keyCode==93){
    rb = true;
  } else if (keyCode==92){
    bs = true;
  }
  System.out.println(keyCode);
}
void keyReleased() {
 if (keyCode==87) {
    W=false;
  } else if (keyCode==65) {
    A=false;
  } else if (keyCode==83) {
    S=false;
  } else if (keyCode==68) {
    D=false;
  } else if (keyCode==9){
    tab=false;
  } else if (keyCode==81){
    Q=false;
  } else if (keyCode==80) {
    P=false;
  } else if (keyCode==76) {
    L=false;
  } else if (keyCode==59) {
    semi=false;
  } else if (keyCode==222) {
    apos=false;
  } else if (keyCode==93){
    rb = false;
  } else if (keyCode==92){
    bs = false;
  }
}
void draw(){
  if(phase == 0){
    background(0);
    fill(255);
    text("WC Fight Club", 100, 100);
    text("Press any key to start", 100, 130);
    fill(255,0,0);
    rect(0, 360, timer1, 10);
    fill(0,0,255);
    rect(550, 0, 10, timer1);
    timer1+=30;
    if(keyPressed){
      timer1 = 0;
      phase = 1;
      delay(200);
    }
  }
  else if(phase == 1){
    noStroke();
   int curs = 10;
    background(255);
    timer1+=40;
    fill(0,0,255);
    rect(0,50,timer1,20);
    fill(255,0,0);
    rect(720 - timer1,250,timer1, 20);
    fill(0);
    text("Choose your character", 50, 30);
    image(sultanP,100,100);
    text("Sultan",100,220);
    image(andresP,250,100);
    text("Andres",250,220);
    image(a2lp, 400, 100);
    text("Algebra II Lord", 400, 220);
    image(fenp, 550, 100);
    text("fen", 550, 220);
    fill(0,0,255);
    ellipse(p1x, p1y, 30, 30);
    rect(0,330,360,200);
    fill(255,0,0);
    ellipse(p2x, p2y, 30, 30);
    rect(360,330,360,200);
    fill(255);
    text("P1",p1x - 7,p1y + 5);
    text("P2",p2x - 7,p2y + 5);
    if(W){
      p1y -= curs;
    }
    if(A){
      p1x -= curs;
    }
    if(S){
      p1y += curs;
    }
    if(D){
      p1x += curs;
    }
    if(P){
      p2y -= curs;
    }
    if(L){
      p2x -= curs;
    }
    if(semi){
      p2y += curs;
    }
    if(apos){
      p2x += curs;
    }
    fill(255);
    if(p1x >= 100 && p1x <= 200 && p1y >= 100 && p1y <= 200){
      image(sultanP, 200, 350);
      text("Sultan", 100, 400);
      text("Sultan Badri. A member of the gang Los Monos, who would later betray his comrades. Packs a heavy hiting punch, and wields a firearm with deadly precision. Difficulty Rating: D",720 - timer22,70);
      timer22++;
      if(tab){
        id1 = 1;
        hp1 = 1000;
        ready1 = true;
      }
    }
    else if(p1x >= 250 && p1x <= 350 && p1y >= 100 && p1y <= 200){
      image(andresP, 200, 350);
      text("Andres", 100, 400);
      text("Andres Monkeyaqua. One of the of the founding members of the gang Los Monos, who gave his life to his cause. Features quick movement for an aggressive playstyle. Difficulty Rating: C",720 - timer22,70);
      timer22++;
      if(tab){
        id1 = 2;
        hp1 = 1000;
        ready1 = true;
      }
    }
    else if(p1x >= 400 && p1x <= 500 && p1y >= 100 && p1y <= 200){
      image(a2lp, 200, 350);
      text("Algebra II Lord", 100, 400);
      text("Algebra II Lord. An ancient omnipotent being who rules over the domain of Algebra. Has devastating attacks and can teleport at will. Difficulty Rating: F",720 - timer22,70);
      timer22++;
      if(tab){
        id1 = 3;
        hp1 = 1000;
        ready1 = true;
      }
    }
    else if(p1x >= 550 && p1x <= 650 && p1y >= 100 && p1y <= 200){
      image(fenp, 200, 350);
      text("fen", 100, 400);
      text("fen. A seemingly innocent man who hides his true identity as a phantom thief of PS4s under a shy demeanor. Brandishes the Master Sword, and uses magic. Difficulty Rating: B",720 - timer22,70);
      timer22++;
      if(tab){
        id1 = 4;
        hp1 = 1000;
        ready1 = true;
      }
    }
    else{
      timer22 = 0;
    }
     if(p2x >= 100 && p2x <= 200 && p2y >= 100 && p2y <= 200){
      image(sultanP, 420, 350);
      text("Sultan", 550, 400);
      text("Sultan Badri. A member of the gang Los Monos, who would later betray his comrades. Packs a heavy hiting punch, and wields a firearm with deadly precision. Difficulty Rating: D",720 - timer2,270);
      timer2++;
      if(bs){
        id2 = 1;
        hp2 = 1000;
        ready2 = true;
      }
    }
    else if(p2x >= 250 && p2x <= 350 && p2y >= 100 && p2y <= 200){
      image(andresP, 420, 350);
      text("Andres", 550, 400);
      text("Andres Monkeyaqua. One of the of the founding members of the gang Los Monos, who gave his life to his cause. Features quick movement for an aggressive playstyle. Difficulty Rating: C",720 - timer2,270);
      timer2++;
      if(bs){
        id2 = 2;
        hp2 = 1000;
        ready2 = true;
      }
    }
     else if(p2x >= 400 && p2x <= 500 && p2y >= 100 && p2y <= 200){
      image(a2lp, 420, 350);
      text("Algebra II Lord", 550, 400);
      text("Algebra II Lord. An ancient omnipotent being who rules over the domain of Algebra. Has devastating attacks and can teleport at will. Difficulty Rating: F",720 - timer2,270);
      timer2++;
      if(bs){
        id2 = 3;
        hp2 = 1000;
        ready2 = true;
      }
    }
        else if(p2x >= 550 && p2x <= 650 && p2y >= 100 && p2y <= 200){
      image(fenp, 420, 350);
      text("fen", 550, 400);
      text("fen. A seemingly innocent man who hides his true identity as a phantom thief of PS4s under a shy demeanor. Brandishes the Master Sword, and uses magic. Difficulty Rating: B",720 - timer2,270);
      timer2++;
      if(bs){
        id2 = 4;
        hp2 = 1000;
        ready2 = true;
      }
    }
    else{
      timer2 = 0;
    }
    fill(#FFF867);
    if(ready1){
      text("READY!!!",100,370);
  }
  if(ready2){
    text("READY!!!",550,370);
  }
    if(ready1 && ready2){
      phase = 4;
      p1x = 250;
      p1y = 400;
      p2x = 470;
      p2y = 400;
      delay(500);
      timer1 = 0;
      timer12 = 0;
      timer22 = 0;
      timer2 = 0;
      prot1 = 0;
      prot2 = 0;
      meter1 = 0;
      meter2 = 0;
      stun1 = 0;
      stun2 = 0;
      meterOn1 = false;
      meterOn2 = false;
    }
  }
  else if (phase == 2){
    if(hp1 < 0 || hp2 < 0){
      timer1 = 0;
      phase = 3;
      
     }
    if(p1x < 0){
      p1x = 0;
    }
     if(p2x < 0){
      p2x = 0;
    }
     if(p1x > 720){
      p1x = 720;
    }
     if(p2x > 720){
      p2x = 720;
    }
    if(stun1 > 0){
      timer1 = 0;
      timer12 = 0;
      if(!meterOn1){
      meter1 += 1;
      }
    }
    if(stun2 > 0){
      timer2 = 0;
      timer22 = 0;
      if(!meterOn2){
        meter2 += 1;
      }
    }
    if(meter1 > 100){
      meter1 = 100;
    }
    if(meter2 > 100){
      meter2 = 100;
    }
    background(stage);
    if(stun1 > 0){
      stroke(255,0,0);
    }
    else{
      noStroke();
    }
    fill(0);
    rect(25,50,1000/3,20);
    fill(0,0,255);
    rect(25,50,hp1/3,20);
    fill(0);
    rect(25,70,200,20);
    if(!meterOn1){
      fill(#FC6FFF);
    }
    else{
      fill(#62FFF6);
    }
    rect(25,70,(int)meter1 * 2, 20);
    
    if(stun2 > 0){
      stroke(255,0,0);
    }
    else{
      noStroke();
    }
    fill(0);
    rect(362,50,1000/3,20);
    fill(255,0,0);
    rect(362 + ((1000-hp2)/3),50,hp2/3,20);
    fill(0);
    rect(495,70,200,20);
    if(!meterOn2){
      fill(#FC6FFF);
    }
    else{
      fill(#62FFF6);
    }
    rect(495 + (200 - ((int)meter2 *2)),70,(int)meter2 * 2, 20);
    //Sultan
    if(id1 == 1){
      if(prot1 > 0){
        noStroke();
        fill(#B9B9B9);
        ellipse(prox1, proy1, 20, 10);
        prot1--;
        prox1 += 10;
        if(abs(prox1 - p2x) < 50 && abs(proy1 - p2y) < 50){
            stun2 = 20;
            p2x += 30;
            hp2 -= 50;
            prot1 = 0;
          }
        
      }
      if(air1 > 0){
        air1--;
        if(air1 > 20){
          p1y -= 10;
        }
        else if(air1 > 10){
          p1y -= 5;
        }
        else{
          p1y -= 3;
        }
      }
      else{
        if(p1y < 400){
          p1y += 5;
          if(p1y > 400){
            p1y = 400;
          }
        }
      }
      if(stun1 > 0){
        stun1--;
        p1i = loadImage("sultanG.png");
      }
      else if(timer1 > 0){
        timer1--;
        if(timer1 < 20 && timer1 > 10){
          p1i = loadImage("sultanA.png");
          if(abs(p1x - p2x) < 150 && abs(p1y - p2y) < 50 && !hit1){
            stun2 = 30;
            p2x += 75;
            hp2 -= 200;
            hit1 = true;
          }
        }
        else{
          p1i = loadImage("sultanB.png");
        }
      }
      else if(timer12 > 0){
        timer12--;
        if(timer12 == 40){
          prot1 = 120;
          prox1 = p1x;
          proy1 = p1y;
        }
        if(timer12 < 40 && timer12 > 35){
          p1i = loadImage("sultanG2.png");
            
        }
        else if(timer12 <= 35){
          p1i = loadImage("sultanG3.png");
        }
        else{
          p1i = loadImage("sultanG1.png");
        }
      }
      else{
        hit1 = false;
        if(S && tab && meter1 == 100){
          meterOn1 = true;
        }
        else if(A){
          p1x -= 5;
        }
        if(D){
          p1x += 5;
        }
        if(W && air1==0 && p1y == 400){
          air1 = 30;
        }
        if(tab){
        timer1 = 50;
      }
      else if(Q){
        timer12 = 45;
      }
        p1i = loadImage("sultanS.png");
      }
      if(meterOn1 == true){
        meter1--;
        if(meter1 > 80){
          p1i = loadImage("sultanT.png");
        }
        else{
          image(loadImage("boom.png"),p1x-150,p1y-150);
          if(abs(p1x - p2x) < 200 && abs(p1y - p2y) < 200){
            stun2 = 1;
            p2x += 10;
            hp2 -= 5;
           }
        }
        if(meter1 == 0){
          meterOn1 = false;
        }
      }
    }
    //Andres
    else if(id1 == 2){
       if(meter1 == 100){
         meterOn1 = true;
      }
      if(meterOn1){
        meter1-=0.125;
        if(meter1 < 1){
          meterOn1 = false;
        }
      }
      if(air1 > 0){
        air1--;
        if(air1 > 20){
          p1y -= 20;
        }
        else if(air1 > 10){
          p1y -= 10;
        }
        else{
          p1y -= 6;
        }
      }
      else{
        if(p1y < 400){
          p1y += 5;
          if(p1y > 400){
            p1y = 400;
          }
        }
      }
      if(stun1 > 0){
        stun1--;
        p1i = loadImage("andresG.png");
        if(meterOn1){
          p1i = loadImage("andresG2.png");
        }
      }
     else if(timer1 > 0){
        timer1--;
        if(timer1 < 5){
          p1i = loadImage("andresA.png");
          if(meterOn1){
          p1i = loadImage("andresA2.png");
        }
          if(abs(p1x - p2x) < 100 && abs(p1y - p2y) < 50 && !hit1){
            stun2 = 5;
            p2x += 55;
            hp2 -= 40;
            hit1 = true;
            if(meterOn1){
              timer1 = 0;
            }
          }
        }
        else{
          p1i = loadImage("andresB.png");
          if(meterOn1){
          p1i = loadImage("andresB2.png");
        }
        }
      }
      else if(timer12 > 0){
        timer12--;
        if(timer12 > 60){
          p1i = loadImage("andresB.png");
          if(meterOn1){
          p1i = loadImage("andresB2.png");
        }
         }
        else if(timer12 > 20){
          p1i = loadImage("andresF.png");
          if(meterOn1){
          p1i = loadImage("andresF2.png");
        }
          p1x += 5;
          if(meterOn1){
            p1x += 5;
          }
          if(abs(p1x - p2x) < 50 && abs(p1y - p2y) < 50 && !hit1){
             stun2 = 30;
             hp2 -= 70;
             p2x += 80;
             hit1 = true;
             timer12 = 20;
             if(meterOn1){
              timer12 = 0;
             }
           }
        }
        else{
          p1i = loadImage("andresA.png");
          if(meterOn1){
          p1i = loadImage("andresA2.png");
        }
        }
      }
      else{
        hit1 = false;
        if(S){
          if(!meterOn1){
            meter1 += 0.25;
            image(loadImage("flare.png"), p1x - 50, p1y - 60);
          }
        }
        else if(A){
          if(meterOn1){
            p1x -= 3;
          }
          p1x -= 7;
        }
        if(D){
          if(meterOn1){
            p1x += 3;
          }
          p1x += 7;
        }
        if(W && air1==0 && p1y == 400){
          air1 = 30;
        }
        if(tab){
        timer1 = 25;
        if(meterOn1){
          timer1 = 20;
        }
      }
      else if(Q){
        timer12 = 100;
        if(meterOn1){
          timer12 = 90;
        }
      }
        p1i = loadImage("andresS.png");
        if(meterOn1){
          p1i = loadImage("andresS2.png");
        }
      }
    }
    //Algebra II Lord
    else if(id1 == 3){
      if(prot1 > 0){
        prot1--;
        prox1+=3;
        fill(255,0,0);
        noStroke();
        rect(prox1, proy1, 50, 200);
          if(abs(prox1 + 25 - p2x) < 25 && abs(proy1 + 100 - p2y) < 100){
            stun2 = 60;
            p2x += 55;
            hp2 -= 70;
            prot1 = 0;
           }
      }
      if(air1 > 0){
        air1--;
        if(air1 > 10){
          p1y -= air1;
        }
        else{
          p1y += 20 - air1;
          if(p1y > 400){
            p1y = 400;
          }
        }
      }
   if(meterOn1){
    meter1--;
    image(loadImage("trail.png"),p1x - 150, p1y - 50);
    p1i = loadImage("a2d.png");
    p1x+=3;
    if(abs(p1x - p2x) < 50 && abs(p1y - p2y) < 50){
            stun2 = 20;
            p2x += 20;
            hp2 -= 3;
    }  
    if(meter1 == 0){
      meterOn1 = false;
    }
   }
   else if(stun1 > 0){
        stun1--;
        p1i = loadImage("a2g.png");
      }
     else if(timer1 > 0){
        timer1--;
        p1i = loadImage("a2a.png");
        if(timer1 == 1){
          prot1 = 180;
          prox1 = p1x;
          proy1 = p1y - 100;
        }
     }
      else if(timer12 > 0){
       p1i = loadImage("a2t.png");
       timer12--;
       if(timer12 == 1){
         if(abs(p1x - p2x) < 60 && abs(p1y - p2y) < 50 && !hit1){
            stun2 = 5;
            hp2 -= 80;
            hit1 = true;
          }  
         if(D){
           p1x += 150;
           if(hit1){
             p2x = p1x + 70;
           }
        }
         else{
           p1x -= 150;
           if(hit1){
             p2x = p1x + 70;
           }
         }
        }
      }
      else{
        hit1 = false;
        if(S && tab && meter1 == 100){
          meterOn1 = true;
        }
        else if(A){
          p1x -= 6;
        }
        if(D){
          p1x += 6;
        }
        if(W && air1==0 && p1y == 400){
          air1 = 20;
        }
        if(tab){
        timer1 = 60;
      }
      else if(Q){
        timer12 = 15;
      }
        p1i = loadImage("a2s.png");
      }
    }
    //fen
    else if (id1 == 4){
      if(meter1 == 100){
         meterOn1 = true;
      }
      if(meterOn1){
        image(loadImage("rannel.png"),p1x - 100, p1y - 100);
        meter1-=0.125;
        if(meter1 < 1){
          meterOn1 = false;
        }
      }
      if(prot1 > 0){
        prot1--;
        fill(0);
        strokeWeight(3);
        stroke(255,0,0);
        ellipse(prox1, proy1, 15, 15);
        if(abs(prox1 - p2x) < 50 && abs(proy1 - p2y) < 50){
            stun2 = 20;
            p2x += 35;
            hp2 -= 50;
            prot1 = 0;
            if(meterOn1){
              p2x += 15;
              hp2 -= 40;
            }
           }
        prox1 += 12;
        proy1 += 1;
      }
       if(air1 > 0){
        air1--;
        if(air1 > 12){
          p1y -= air1;
        }
        else{
          p1y += 24 - air1;
          if(p1y > 400){
            p1y = 400;
          }
        }
      }
   if(stun1 > 0){
        if(!guard1){
          stun1--;
          p1i = loadImage("fenG.png");
        }
        else{
          stun1-=2;
          p1i = loadImage("fenRa.png");
          hp1+=1;
          meter1 += 1.25;
        }
      }
     else if(timer1 > 0){
        timer1--;
        if(timer1 >= 20){
          p1i = loadImage("fenB.png");
        }
        else if(timer1 < 20 && timer1 > 10){
          p1i = loadImage("fenA.png");
          if(abs(p1x - p2x) < 175 && abs(p1y - p2y) < 50 && !hit1){
            stun2 = 10;
            p2x += 80;
            hp2 -= 40;
            if(meterOn1){
              hp2 -= 30;
           }
            hit1 = true;
          }  
        }
        else{
          p1i = loadImage("fenS.png");
        }
     }
      else if(timer12 > 0){
       p1i = loadImage("fenE.png");
       timer12--;
       if(timer12 == 15){
         prox1 = p1x;
        proy1 = p1y;
        prot1 = 50;
       }
      }
      else{
        hit1 = false;
          if(S){
          guard1 = true;
        }
        else{
          guard1 = false;
        if(A){
          p1x -= 6;
        }
        if(D){
          p1x += 6;
        }
        if(W && air1==0 && p1y == 400){
          air1 = 24;
        }
        if(tab){
        timer1 = 30;
      }
      else if(Q){
        timer12 = 30;
      }
        }
        if(guard1){
          p1i = loadImage("fenR.png");
        }
        else{
          p1i = loadImage("fenS.png");
        }
      }
    }
    noStroke();
    //Sultan
    if(id2 == 1){
      if(prot2 > 0){
        noStroke();
        fill(#B9B9B9);
        ellipse(prox2, proy2, 20, 10);
        prot2--;
        prox2 -= 10;
        if(abs(prox2 - p1x) < 50 && abs(proy2 - p1y) < 50){
            stun1 = 20;
            p1x -= 30;
            hp1 -= 50;
            prot2 = 0;
          }
        
      }
      if(air2 > 0){
        air2--;
        if(air2 > 20){
          p2y -= 10;
        }
        else if(air2 > 10){
          p2y -= 5;
        }
        else{
          p2y -= 3;
        }
      }
      else{
        if(p2y < 400){
          p2y += 5;
          if(p2y > 400){
            p2y = 400;
          }
        }
      }
      if(stun2 > 0){
        stun2--;
        p2i = loadImage("sultanG copy.png");
      }
      else if(timer2 > 0){
        timer2--;
        if(timer2 < 20 && timer2 > 10){
          p2i = loadImage("sultanA copy.png");
          if(abs(p1x - p2x) < 150 && abs(p1y - p2y) < 50 && !hit2){
            stun1 = 30;
            p1x -= 75;
            hp1 -= 200;
            hit2 = true;
          }
        }
        else{
          p2i = loadImage("sultanB copy.png");
        }
      }
      else if(timer22 > 0){
        timer22--;
        if(timer22 == 40){
          prot2 = 120;
          prox2 = p2x;
          proy2 = p2y;
        }
        if(timer22 < 40 && timer22 > 35){
          p2i = loadImage("sultanG2 copy.png");
            
        }
        else if(timer22 <= 35){
          p2i = loadImage("sultanG3 copy.png");
        }
        else{
          p2i = loadImage("sultanG1 copy.png");
        }
      }
      else{
        hit2 = false;
        if(semi && rb && meter2 == 100){
          meterOn2 = true;
        }
        else if(L){
          p2x -= 5;
        }
        if(apos){
          p2x += 5;
        }
        if(P && air2==0 && p2y == 400){
          air2 = 30;
        }
        if(rb){
        timer2 = 50;
      }
      else if(bs){
        timer22 = 45;
      }
        p2i = loadImage("sultanS copy.png");
      }
      if(meterOn2 == true){
        meter2--;
        if(meter2 > 80){
          p2i = loadImage("sultanT copy.png");
        }
        else{
          image(loadImage("boom.png"),p2x-150,p2y-150);
          if(abs(p1x - p2x) < 200 && abs(p1y - p2y) < 200){
            stun1 = 1;
            p1x -= 10;
            hp1 -= 5;
           }
        }
        if(meter2 == 0){
          meterOn2 = false;
        }
      }
    }
    //Andres
   else if(id2 == 2){
       if(meter2 == 100){
         meterOn2 = true;
      }
      if(meterOn2){
        meter2-=0.125;
        if(meter2 < 1){
          meterOn2 = false;
        }
      }
      if(air2 > 0){
        air2--;
        if(air2 > 20){
          p2y -= 20;
        }
        else if(air2 > 10){
          p2y -= 10;
        }
        else{
          p2y -= 6;
        }
      }
      else{
        if(p2y < 400){
          p2y += 5;
          if(p2y > 400){
            p2y = 400;
          }
        }
      }
      if(stun2 > 0){
        stun2--;
        p2i = loadImage("andresG copy.png");
        if(meterOn2){
          p2i = loadImage("andresG2 copy.png");
        }
      }
     else if(timer2 > 0){
        timer2--;
        if(timer2 < 5){
          p2i = loadImage("andresA copy.png");
          if(meterOn2){
          p2i = loadImage("andresA2 copy.png");
        }
          if(abs(p1x - p2x) < 100 && abs(p1y - p2y) < 50 && !hit2){
            stun1 = 5;
            p1x -= 55;
            hp1 -= 40;
            hit2 = true;
            if(meterOn2){
              timer2 = 0;
            }
          }
        }
        else{
          p2i = loadImage("andresB copy.png");
          if(meterOn2){
          p2i = loadImage("andresB2 copy.png");
        }
        }
      }
      else if(timer22 > 0){
        timer22--;
        if(timer22 > 60){
          p2i = loadImage("andresB copy.png");
          if(meterOn2){
          p2i = loadImage("andresB2 copy.png");
        }
         }
        else if(timer22 > 20){
          p2i = loadImage("andresF copy.png");
          if(meterOn2){
          p2i = loadImage("andresF2 copy.png");
        }
          p2x -= 5;
          if(meterOn2){
            p2x -= 5;
          }
          if(abs(p1x - p2x) < 50 && abs(p1y - p2y) < 50 && !hit2){
             stun1 = 30;
             hp1 -= 70;
             p1x -= 80;
             hit2 = true;
             timer22 = 20;
             if(meterOn2){
              timer22 = 0;
             }
           }
        }
        else{
          p2i = loadImage("andresA copy.png");
          if(meterOn2){
          p2i = loadImage("andresA2 copy.png");
        }
        }
      }
      else{
        hit2 = false;
        if(semi){
          if(!meterOn2){
            meter2 += 0.25;
            image(loadImage("flare.png"), p2x - 50, p2y - 60);
          }
        }
        else if(L){
          if(meterOn2){
            p2x -= 3;
          }
          p2x -= 7;
        }
        if(apos){
          if(meterOn2){
            p2x += 3;
          }
          p2x += 7;
        }
        if(P && air2==0 && p2y == 400){
          air2 = 30;
        }
        if(rb){
        timer2 = 25;
        if(meterOn2){
          timer1 = 20;
        }
      }
      else if(bs){
        timer22 = 100;
        if(meterOn2){
          timer22 = 90;
        }
      }
        p2i = loadImage("andresS copy.png");
        if(meterOn2){
          p2i = loadImage("andresS2 copy.png");
        }
      }
    }
    //Algebra II Lord
    else if(id2 == 3){
      if(prot2 > 0){
        prot2--;
        prox2-=3;
        fill(255,0,0);
        noStroke();
        rect(prox2, proy2, 50, 200);
          if(abs(prox2 + 25 - p1x) < 25 && abs(proy2 + 100 - p1y) < 100){
            stun1 = 60;
            p1x -= 55;
            hp1 -= 70;
            prot2 = 0;
           }
      }
      if(air2 > 0){
        air2--;
        if(air2 > 10){
          p2y -= air2;
        }
        else{
          p2y += 20 - air2;
          if(p2y > 400){
            p2y = 400;
          }
        }
      }
   if(meterOn2){
    meter2--;
    image(loadImage("trail copy.png"),p2x - 50, p2y - 50);
    p2i = loadImage("a2d copy.png");
    p2x-=3;
    if(abs(p1x - p2x) < 50 && abs(p1y - p2y) < 50){
            stun1 = 20;
            p1x -= 20;
            hp1 -= 3;
    }  
    if(meter2 == 0){
      meterOn2 = false;
    }
   }
   else if(stun2 > 0){
        stun2--;
        p2i = loadImage("a2g copy.png");
      }
     else if(timer2 > 0){
        timer2--;
        p2i = loadImage("a2a copy.png");
        if(timer2 == 1){
          prot2 = 180;
          prox2 = p2x - 50;
          proy2 = p2y - 100;
        }
     }
      else if(timer22 > 0){
       p2i = loadImage("a2t copy.png");
       timer22--;
       if(timer22 == 1){
         if(abs(p1x - p2x) < 60 && abs(p1y - p2y) < 50 && !hit2){
            stun1 = 5;
            hp1 -= 80;
            hit2 = true;
          }  
         if(apos){
           p2x += 150;
           if(hit2){
             p1x = p2x - 70;
           }
        }
         else{
           p2x -= 150;
           if(hit2){
             p1x = p2x - 70;
           }
         }
        }
      }
      else{
        hit2 = false;
        if(semi && rb && meter2 == 100){
          meterOn2 = true;
        }
        else if(L){
          p2x -= 6;
        }
        if(apos){
          p2x += 6;
        }
        if(P && air2==0 && p2y == 400){
          air2 = 20;
        }
        if(rb){
        timer2 = 60;
      }
      else if(bs){
        timer22 = 15;
      }
        p2i = loadImage("a2s copy.png");
      }
    }
    //fen
    else if (id2 == 4){
      if(meter2 == 100){
         meterOn2 = true;
      }
      if(meterOn2){
        image(loadImage("rannel copy.png"),p2x, p2y - 100);
        meter2-=0.125;
        if(meter2 < 1){
          meterOn2 = false;
        }
      }
      if(prot2 > 0){
        prot2--;
        fill(0);
        strokeWeight(3);
        stroke(255,0,0);
        ellipse(prox2, proy2, 15, 15);
        if(abs(prox2 - p1x) < 50 && abs(proy2 - p1y) < 50){
            stun1 = 20;
            p1x -= 35;
            hp1 -= 50;
            prot2 = 0;
            if(meterOn2){
              p1x -= 15;
              hp1 -= 40;
            }
           }
        prox2 -= 12;
        proy2 += 1;
      }
       if(air2 > 0){
        air2--;
        if(air2 > 12){
          p2y -= air2;
        }
        else{
          p2y += 24 - air2;
          if(p2y > 400){
            p2y = 400;
          }
        }
      }
   if(stun2 > 0){
        if(!guard2){
          stun2--;
          p2i = loadImage("fenG copy.png");
        }
        else{
          stun2-=2;
          p2i = loadImage("fenRa copy.png");
          hp2+=1;
          meter2 += 1.25;
        }
      }
     else if(timer2 > 0){
        timer2--;
        if(timer2 >= 20){
          p2i = loadImage("fenB copy.png");
        }
        else if(timer2 < 20 && timer2 > 10){
          p2i = loadImage("fenA copy.png");
          if(abs(p1x - p2x) < 175 && abs(p1y - p2y) < 50 && !hit2){
            stun1 = 10;
            p1x -= 80;
            hp1 -= 40;
            if(meterOn2){
              hp1 -= 30;
            }
            hit2 = true;
          }  
        }
        else{
          p2i = loadImage("fenS copy.png");
        }
     }
      else if(timer22 > 0){
       p2i = loadImage("fenE copy.png");
       if(timer22 == 15){
         prox2 = p2x;
        proy2 = p2y;
        prot2 = 50;
       }
       timer22--;
      }
      else{
        hit2 = false;
          if(semi){
          guard2 = true;
        }
        else{
          guard2 = false;
        if(L){
          p2x -= 6;
        }
        if(apos){
          p2x += 6;
        }
        if(P && air2==0 && p2y == 400){
          air2 = 24;
        }
        if(rb){
        timer2 = 30;
      }
      else if(bs){
        timer22 = 30;
      }
        }
        if(guard2){
          p2i = loadImage("fenR copy.png");
        }
        else{
          p2i = loadImage("fenS copy.png");
        }
      }
    }
    image(p1i,p1x - 50, p1y - 50);
    image(p2i,p2x - 50, p2y - 50);
  }
  else if(phase == 3){
    background(0);
    fill(255);
    timer1++;
    if(timer1 > 300){
      if(hp1 > hp2){
        background(0,0,255);
        if(id1 == 1){
          image(loadImage("sultanv.png"),0,0);
        }
        else if(id1 == 2){
          image(loadImage("andresv.png"),0,0);
        }
        else if(id1 == 3){
          image(loadImage("a2v.png"),0,0);
        }
        else if(id1 == 4){
          image(loadImage("fenv.png"),0,0);
        }
      }
      else{
        background(255,0,0);
        if(id2 == 1){
          image(loadImage("sultanv.png"),0,0);
        }
        else if(id2 == 2){
          image(loadImage("andresv.png"),0,0);
        }
        else if(id2 == 3){
          image(loadImage("a2v.png"),0,0);
        }
        else if(id2 == 4){
          image(loadImage("fenv.png"),0,0);
        }
      }
      if(keyPressed){
        ready1 = false;
        ready2 = false;
        phase = 1;
        delay(200);
        p1x = 40;
        p1y = 100;
        p2x = 680;
        p2y = 100;
        timer1 = 0;
        timer2 = 0;
        timer12 = 0;
        timer22 = 0;
      }
    }
    else if(timer1 > 150){
      text("And the winner is",100,100);
    }
    else{
     image(loadImage("ko.png"),0,0);
    }
  }
  else if(phase==4){
    background(255);
    fill(0);
    text("Select the stage",50,50);
    timer1+=60;
    if(stageId == 0){
      fill(0,0,255);
      rect(0,50,timer1, 50);
      fill(255);
      text("Santosh's House", 100, 70);
      stage = loadImage("santosh.png");
    }
    else if(stageId == 1){
      fill(255,0,0);
      rect(720 - timer1,150,timer1,50);
      fill(255);
      text("The Rice Fields", 500, 170);
      stage = loadImage("rf.png");
    }
     else if(stageId == 2){
      fill(0,0,255);
      rect(0,250,timer1, 50);
      fill(255);
      text("Hercules High School", 100, 270);
      stage = loadImage("hhs.png");
    }
     else if(stageId == 3){
      fill(255,0,0);
      rect(720 - timer1,350,timer1,50);
      fill(255);
      text("The Void", 500, 370);
      stage = loadImage("void.png");
    }
    if(S && stageId<3 && timer1 >= 360){
      stageId++;
      timer1 = 0;
    }
    else if(W & stageId > 0 && timer1 >= 360){
      stageId--;
      timer1 = 0;
    }
    else if(tab){
      timer1=0;
      phase = 5;
    }
    image(loadImage("santosh copy.png"), 321, 50);
    image(loadImage("rf copy.png"), 321, 150);
    image(loadImage("hhs copy.png"), 321, 250);
    image(loadImage("void copy.png"), 321, 350);
  }
  else if(phase == 5){
    timer1++;
    if(timer1 < 60){
      background(0,0,255);
      if(id1 == 1){
        image(loadImage("sultanv.png"),0,0);
      }
      else if(id1 == 2){
         image(loadImage("andresv.png"),0,0);
      }
      else if(id1 == 3){
         image(loadImage("a2v.png"),0,0);
      }
      else if(id1 == 4){
         image(loadImage("fenv.png"),0,0);
      }
    }
    else if(timer1 < 90){
      background(0);
      image(loadImage("vs.png"),0,0);
    }
    else if(timer1 < 150){
      background(255,0,0);
      if(id2 == 1){
        image(loadImage("sultanv.png"),0,0);
      }
      else if(id2 == 2){
         image(loadImage("andresv.png"),0,0);
      }
      else if(id2 == 3){
         image(loadImage("a2v.png"),0,0);
      }
      else if(id2 == 4){
         image(loadImage("fenv.png"),0,0);
      }
    }
    else if(timer1 < 170){
      background(0);
      image(loadImage("3.png"),0,0);
    }
    else if(timer1 < 190){
      background(0);
      image(loadImage("2.png"),0,0);
    }
    else if(timer1 < 200){
      background(0);
      image(loadImage("1.png"),0,0);
    }
    else if(timer1 < 260){
      background(0);
      image(loadImage("go.png"),0,0);
    }
    else{
      timer1 = 0;
      phase = 2;
    }
  }
}