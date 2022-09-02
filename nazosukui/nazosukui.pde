int timeCreature1 = 8; // creature1の動きが変わるまでの時間の記憶変数
int timeCreature1_1 = 15;//copy
int timeCreature1_2 = 3;//copy
int timeCreature2 = 0; // creature2の動きが変わるまでの時間の記憶変数
int timeCreature2_1 = 7;//copy
int timeCreature2_2 = 18;//copy

void setup() {
  size(450, 800);
  colorMode(HSB, 360, 100, 100);
  setupPic();
  setupSound();
  PFont font=createFont("YokosukaBlock-Regular.otf", 24);
  textFont(font); // フォント変更
}

void draw() {
  background(196, 50, 100);
  rect(350, 0, 30, 30); // すくったアイテム
  
  timeCreature1++; // 実行される度timeCreatureが１増える
  timeCreature1_1++;//copy
  timeCreature1_2++;//copy
  timeCreature2++;
  timeCreature2_1++;//copy
  timeCreature2_2++;//copy

  //謎の生き物
  creature1Move();
  creature1Move1_1();
  creature1Move1_2();
  creature2Move();
  creature2Move2_1();
  creature2Move2_2();

 //ポイが壊れたか壊れてないかの判定
  if (breakornot == false) { // ポイが破れていないとき
    poinotBroken();
    poiBroken();
    
    Creature1();
    Creature1_1();
    Creature1_2();
    Creature2();
    Creature2_1();
    Creature2_2();
    
  } else { // ポイが破れたとき
    background(255);
    poiBroken();
    
    Creature1();
    Creature1_1();
    Creature1_2();
    Creature2();
    Creature2_1();
    Creature2_2();
    
    gameover();
  }
  //println(Cx1_2,Cy1_2);
}
