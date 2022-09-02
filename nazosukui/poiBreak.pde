boolean breakornot = false; // ポイが破れているかどうかの変数、初期値は破れていない(false)

int poiCount = 0; // ポイを水から出した回数
int poiBreaknum; // ポイが壊れるかどうかのランダムな数字を記憶する関数
int creatureCount = 0; // ポイが生物をすくった回数

//ポイが壊れるかの判定（ランダムに数字を決める）
void poiBreaknum() {
  poiBreaknum = int(random(0, 100));
}

//ポイが壊れるか壊れないかの判定(確率的に破れる)
void poiBreakJug() {
  if (breakornot == false) { // ポイが破れていないとき
    if (poiCount < 6) { // ポイを水から出した回数が６より小さいとき
      if (poiBreaknum < 90) { // poiBreaknum(ランダムな値)が９０より小さいとき
        poinotBroken(); // ポイは壊れない
      } else if (poiBreaknum >= 90) { // poiBreaknum(ランダムな値)が９０以上のとき
        breakornot = true; // ポイは破れる
      }
    } else if (poiCount >= 6 && poiCount < 11) { // ポイを水から出した回数が６以上１１未満のとき
      if (poiBreaknum < 80) { // poiBreaknum(ランダムな値)が８０より小さいとき
        poinotBroken(); // ポイは破れない
      } else if (poiBreaknum >= 80) { // poiBreaknum(ランダムな値)が９０以上のとき
        breakornot = true; // ポイは破れる
      }
    } else if (poiCount >= 11 && poiCount < 16) { // ポイを水から出した回数が１１以上１６未満のとき
      if (poiBreaknum < 70) { // poiBreaknum(ランダムな値)が７０より小さいとき
        poinotBroken(); // ポイは壊れない
      } else if (poiBreaknum >= 70) { // poiBreaknum(ランダムな値)が７０以上のとき
        breakornot = true; // ポイは破れる
      }
    } else if (poiCount >= 16) { // ポイを水から出した回数が１６以上のとき
      if (poiBreaknum < 50) { // poiBreaknum(ランダムな値)が５０より小さいとき
        poinotBroken(); // ポイは破れない
      } else if (poiBreaknum >= 50) { // poiBreaknum(ランダムな値)が５０以上のとき
        breakornot = true; // ポイは破れる
      }
    }
  } else if (breakornot == true) { // ポイが破れたとき
    poiBroken(); // 破れたポイを表示
  }
}
