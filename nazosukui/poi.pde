int poiY = 400; // ポイの初期位置
int poiX = 50;
int poiSize = 95; // ポイのサイズ

//ポイのXY座標
int poiJugx;
int poiJugy;

void poinotBroken() { // 破れていないポイ（判定あり）
  if (breakornot == false) {
    if (mouseY < height-poiSize && mouseX < width-poiSize) { // マウスの位置にポイを表示する
      image(poi, mouseX, mouseY);
    } else if (mouseY > height-(poiSize/2)) { // ポイが下に行き過ぎたとき、画面からでないよう補正する
      image(poi, mouseX, mouseY);
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき、画面から出ないよう補正する
      image(poi, mouseX, mouseY);
    }
  }
}

void poiBroken() { // 壊れたポイ（判定なし）
  if (breakornot == true ) {
    if (mouseY<height-poiSize) { // マウスの位置にポイを表示する
      image(brokenpoi, mouseX, mouseY);
    } else if (mouseY>height-poiSize) { // ポイが下に行き過ぎたとき、画面からでないよう補正する
      image(brokenpoi, mouseX, mouseY);
    } else if (mouseX > width-poiSize) { // ポイが右に行き過ぎたとき、画面から出ないよう補正する
      image(brokenpoi, mouseX, mouseY);
    }
  }
}
