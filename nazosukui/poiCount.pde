/*
マウス関係の関数は、後で複数ページを扱うときに、if page=〇という条件のもとかく.
 */

void mousePressed() { // ポイを水に入れるとき、SEを流す
  water1.play();
}

// ポイを水から出す
void mouseReleased() {
  if (breakornot == false) { // ポイが破れていないとき
  // ポイの座標ににマウスのXY座標を代入
  poiJugy = mouseY;
  poiJugx = mouseX;

  poiCount++; // マウスをクリックしたとき、ポイを水から出した回数を１増やす
  poiBreaknum(); // マウスをクリックしたとき、ポイが壊れるかの判定をランダムに決める

  poiJudgeCx1(); // ポイと生物との重なり判定
  poiJudgeCx1_1();
  poiJudgeCx1_2();
  poiJudgeCx2();
  poiJudgeCx2_1();
  poiJudgeCx2_2();

  poiBreakJug(); // ポイが壊れるか壊れないかの判定
  }else{
    poiBroken();
  }
}


// ポイとcreature1との当たり判定
void poiJudgeCx1() {
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // ポイ通常時
      if (poiJugx < Cx1+10 && poiJugx+poiSize > Cx1+creatureSize-10) { // ポイと生物が重なったら(x軸)
        if (poiJugy < Cy1-10 && poiJugy+(poiSize/2) > Cy1-creatureSize+10) { // (y軸)
          Cx1 = width; // 生物を初期位置に戻す
          Cy1 = 200;
          creatureCount++; // ポイが生物をすくった回数を増やす
          water2.play();
        }
      }
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき
      if (poiJugx < Cx1+10 && poiJugx+poiSize > Cx1+creatureSize-10) { // ポイと生物が重なったら
        Cx1 = -50; // 生物を初期位置に戻す
        Cy1 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき
      if (poiJugy < Cy1-10 && poiJugy+(poiSize/2) > Cy1-creatureSize+10) { // ポイと生物が重なったら
        Cx1 = -50; // 生物を初期位置に戻す
        Cy1 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    }
  }
}

// ポイとcreature1_1との当たり判定
void poiJudgeCx1_1() {
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // ポイ通常時
      if (poiJugx < Cx1_1 +10 && poiJugx+poiSize > Cx1_1 +creatureSize-10) { // ポイと生物が重なったら(x軸)
        if (poiJugy < Cy1_1 -10 && poiJugy+(poiSize/2) > Cy1_1 -creatureSize+10) { // (y軸)
          Cx1_1 = width; // 生物を初期位置に戻す
          Cy1_1 = 200;
          creatureCount++; // ポイが生物をすくった回数を増やす
          water2.play();
        }
      }
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき
      if (poiJugx < Cx1_1 +10 && poiJugx+poiSize > Cx1_1 +creatureSize-10) { // ポイと生物が重なったら
        Cx1_1 = -50; // 生物を初期位置に戻す
        Cy1_1 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき
      if (poiJugy < Cy1_1 -10 && poiJugy+(poiSize/2) > Cy1_1 -creatureSize+10) { // ポイと生物が重なったら
        Cx1_1 = -50; // 生物を初期位置に戻す
        Cy1_1 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    }
  }
}

// ポイとcreature1_2との当たり判定
void poiJudgeCx1_2() {
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // ポイ通常時
      if (poiJugx < Cx1_2+10 && poiJugx+poiSize > Cx1_2 +creatureSize-10) { // ポイと生物が重なったら(x軸)
        if (poiJugy < Cy1_2 -10 && poiJugy+(poiSize/2) > Cy1_2 -creatureSize+10) { // (y軸)
          Cx1_2 = width; // 生物を初期位置に戻す
          Cy1_2 = 200;
          creatureCount++; // ポイが生物をすくった回数を増やす
          water2.play();
        }
      }
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき
      if (poiJugx < Cx1_2 +10 && poiJugx+poiSize > Cx1_2 +creatureSize-10) { // ポイと生物が重なったら
        Cx1_2 = -50; // 生物を初期位置に戻す
        Cy1_2 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき
      if (poiJugy < Cy1_2 -10 && poiJugy+(poiSize/2) > Cy1_2 -creatureSize+10) { // ポイと生物が重なったら
        Cx1_2 = -50; // 生物を初期位置に戻す
        Cy1_2 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    }
  }
}


// ポイとcreature2との当たり判定
void poiJudgeCx2() {
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // ポイ通常時
      if (poiJugx < Cx2+10 && poiJugx+poiSize > Cx2+creatureSize-10) { // ポイと生物が重なったら
        if (poiJugy < Cy2-10 && poiJugy+(poiSize/2) > Cy2-creatureSize+10) {
          Cx2 = -50;  // 生物を初期位置に戻す
          Cy2 = 400;
          creatureCount++; // ポイが生物をすくった回数を増やす
          water2.play();
        }
      }
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき
      if (poiJugx < Cx2+10 && poiJugx+poiSize > Cx2+creatureSize-10) { // ポイと生物が重なったら
        Cx1 = -50;  // 生物を初期位置に戻す
        Cy1 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき
      if (poiJugy < Cy2-10 && poiJugy+(poiSize/2) > Cy2-creatureSize+10) { // ポイと生物が重なったら
        Cx1 = -50;  // 生物を初期位置に戻す
        Cy1 = 400;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    }
  }
}

// ポイとcreature2_1との当たり判定
void poiJudgeCx2_1() {
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // ポイ通常時
      if (poiJugx < Cx2_1 +10 && poiJugx+poiSize > Cx2_1 +creatureSize-10) { // ポイと生物が重なったら
        if (poiJugy < Cy2_1 -10 && poiJugy+(poiSize/2) > Cy2_1 -creatureSize+10) {
          Cx2_1 = -20;  // 生物を初期位置に戻す
          Cy2_1 = 200;
          creatureCount++; // ポイが生物をすくった回数を増やす
          water2.play();
        }
      }
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき
      if (poiJugx < Cx2_1 +10 && poiJugx+poiSize > Cx2_1 +creatureSize-10) { // ポイと生物が重なったら
        Cx2_1 = -20;  // 生物を初期位置に戻す
        Cy2_1 = 200;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき
      if (poiJugy < Cy2_1 -10 && poiJugy+(poiSize/2) > Cy2_1 -creatureSize+10) { // ポイと生物が重なったら
        Cx2_1 = -20;  // 生物を初期位置に戻す
        Cy2_1 = 200;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    }
  }
}

// ポイとcreature2_2との当たり判定
void poiJudgeCx2_2() {
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // ポイ通常時
      if (poiJugx < Cx2_2 +10 && poiJugx+poiSize > Cx2_2 +creatureSize-10) { // ポイと生物が重なったら
        if (poiJugy < Cy2_2 -10 && poiJugy+(poiSize/2) > Cy2_2 -creatureSize+10) {
          Cx2_2 = -100;  // 生物を初期位置に戻す
          Cy2_2 = 600;
          creatureCount++; // ポイが生物をすくった回数を増やす
          water2.play();
        }
      }
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき
      if (poiJugx < Cx2_2 +10 && poiJugx+poiSize > Cx2_2 +creatureSize-10) { // ポイと生物が重なったら
        Cx2_2 = -100;  // 生物を初期位置に戻す
        Cy2_2 = 600;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき
      if (poiJugy < Cy2_2 -10 && poiJugy+(poiSize/2) > Cy2_2 -creatureSize+10) { // ポイと生物が重なったら
        Cx2_2 = -100;  // 生物を初期位置に戻す
        Cy2_2 = 600;
        creatureCount++; // ポイが生物をすくった回数を増やす
        water2.play();
      }
    }
  }
}
