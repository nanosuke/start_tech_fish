int creatureSize = 52; // 謎の生き物のサイズ

/*     ///右から左に動く謎の生き物///     */
int Cx1 = width; // 生き物の初期x座標
int Cy1 = 400; // 生き物の初期y座標
int movex1; // 生き物がx軸上で動く方向と速度
int movey1; // 生き物がy軸上で動く方向と速度

void creature1Move() { // 謎の生き物の動きを決める
  if (timeCreature1 == 20) { // 記憶変数が20になるまでの生き物の動きをランダムで決める
    movex1 = int(random(-3, -1));
    movey1 = int(random(-5, 5));
    timeCreature1 = 0; // 記憶変数をリセットする
  }
}

void Creature1() { // 動く謎の生き物を表示する
  if (Cx1 > -100) { // 生物が右端に達するまで、生物を動かす
    Cx1 = Cx1+movex1; // 生物の速度
    Cy1 = Cy1+movey1;
    image(creature1, Cx1, Cy1); // 生物を表示
  } else  if (Cx1 <= -100) { // 生物が右端に達したとき、初期位置に戻す
    Cx1 = width; // 初期位置
    Cy1 = 400;
  }
}

//増やした
int Cx1_1 = width; // 生き物の初期x座標
int Cy1_1 = 150; // 生き物の初期y座標
int movex1_1; // 生き物がx軸上で動く方向と速度
int movey1_1; // 生き物がy軸上で動く方向と速度

void creature1Move1_1() { // 謎の生き物の動きを決める
  if (timeCreature1_1 == 20) { // 記憶変数が20になるまでの生き物の動きをランダムで決める
    movex1_1 = int(random(-3, -1));
    movey1_1 = int(random(-5, 5));
    timeCreature1_1 = 0; // 記憶変数をリセットする
  }
}

void Creature1_1() { // 動く謎の生き物を表示する
  if (Cx1_1 > -100) { // 生物が右端に達するまで、生物を動かす
    Cx1_1 = Cx1_1+movex1_1; // 生物の速度
    Cy1_1 = Cy1_1+movey1_1;
    image(creature1, Cx1_1, Cy1_1); // 生物を表示
  } else  if (Cx1_1 <= -100) { // 生物が右端に達したとき、初期位置に戻す
    Cx1_1 = width; // 初期位置
    Cy1_1 = 150;
  }
}

//増やした
int Cx1_2 = width+50; // 生き物の初期x座標
int Cy1_2 = 700; // 生き物の初期y座標
int movex1_2; // 生き物がx軸上で動く方向と速度
int movey1_2; // 生き物がy軸上で動く方向と速度

void creature1Move1_2() { // 謎の生き物の動きを決める
  if (timeCreature1_2 == 20) { // 記憶変数が20になるまでの生き物の動きをランダムで決める
    movex1_2 = int(random(-3, -1));
    movey1_2 = int(random(-5, 5));
    timeCreature1_2 = 0; // 記憶変数をリセットする
    println(true);
  }
}

void Creature1_2() { // 動く謎の生き物を表示する
  if (Cx1_2 > -100) { // 生物が右端に達するまで、生物を動かす
    Cx1_2 = Cx1_2+movex1_2; // 生物の速度
    Cy1_2 = Cy1_2+movey1_2;
    image(creature1, Cx1_2, Cy1_2); // 生物を表示
  } else  if (Cx1_2 <= -100) { // 生物が右端に達したとき、初期位置に戻す
    Cx1_2 = width+50; // 初期位置
    Cy1_2 = 300;
    
  }
}

/*     ///左から右に動く謎の生き物///     */
int Cx2 = -50; // 生き物の初期x座標
int Cy2 = 400; // 生き物の初期y座標
int movex2; // 生き物がx軸上で動く方向と速度
int movey2; // 生き物がy軸上で動く方向と速度

void creature2Move() { // 謎の生き物の動きを決める
  if (timeCreature2 == 20) { // 記憶変数が20になるまでの生き物の動きをランダムで決める
    movex2 = int(random(1, 3));
    movey2 = int(random(-5, 5));
    timeCreature2 = 0; // 記憶変数をリセットする
  }
}
void Creature2() { // 動く謎生き物を表示する
  if (Cx2 < width) { // 生物が右端に達するまで、生物を動かす
    Cx2 = Cx2+movex2; // 生物の速度
    Cy2 = Cy2+movey2;
    image(creature2, Cx2, Cy2); // 生物を表示
  } else  if (Cx2 >= width) { // 生物が右端に達したとき、初期位置に戻す
    Cx2 = -50; // 初期位置
    Cy2 = 400;
  }
}

//増やした
int Cx2_1 = -20; // 生き物の初期x座標
int Cy2_1 = 200; // 生き物の初期y座標
int movex2_1; // 生き物がx軸上で動く方向と速度
int movey2_1; // 生き物がy軸上で動く方向と速度

void creature2Move2_1() { // 謎の生き物の動きを決める
  if (timeCreature2_1 == 20) { // 記憶変数が20になるまでの生き物の動きをランダムで決める
    movex2_1 = int(random(1, 3));
    movey2_1 = int(random(-5, 5));
    timeCreature2_1 = 0; // 記憶変数をリセットする
  }
}
void Creature2_1() { // 動く謎生き物を表示する
  if (Cx2_1 < width) { // 生物が右端に達するまで、生物を動かす
    Cx2_1 = Cx2_1+movex2_1; // 生物の速度
    Cy2_1 = Cy2_1+movey2_1;
    image(creature2, Cx2_1, Cy2_1); // 生物を表示
  } else  if (Cx2_1 >= width) { // 生物が右端に達したとき、初期位置に戻す
    Cx2_1 = -20; // 初期位置
    Cy2_1 = 200;
  }
}

//増やした
int Cx2_2 = -100; // 生き物の初期x座標
int Cy2_2 = 600; // 生き物の初期y座標
int movex2_2; // 生き物がx軸上で動く方向と速度
int movey2_2; // 生き物がy軸上で動く方向と速度

void creature2Move2_2() { // 謎の生き物の動きを決める
  if (timeCreature2_2 == 20) { // 記憶変数が20になるまでの生き物の動きをランダムで決める
    movex2_2 = int(random(1, 3));
    movey2_2 = int(random(-5, 5));
    timeCreature2_2 = 0; // 記憶変数をリセットする
  }
}
void Creature2_2() { // 動く謎生き物を表示する
  if (Cx2_2 < width) { // 生物が右端に達するまで、生物を動かす
    Cx2_2 = Cx2_2+movex2_2; // 生物の速度
    Cy2_2 = Cy2_2+movey2_2;
    image(creature2, Cx2_2, Cy2_2); // 生物を表示
  } else  if (Cx2_2 >= width) { // 生物が右端に達したとき、初期位置に戻す
    Cx2_2 = -100; // 初期位置
    Cy2_2 = 600;
  }
}
