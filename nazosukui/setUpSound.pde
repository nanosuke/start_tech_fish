import processing.sound.*;
SoundFile water1, water2; // SEの変数

void setupSound(){
  water1=new SoundFile(this, "水滴3.mp3"); // ポイを水に入れる音
  water2=new SoundFile(this, "水音　バシャ.mp3"); // 生物を水から出す音
}
