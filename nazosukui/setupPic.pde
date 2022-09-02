PImage poi, brokenpoi, creature1, creature2, creature3;

void setupPic() {
  poi=loadImage("poi.png"); // ポイ
  poi.resize(poi.width*2, poi.height*2);
  brokenpoi=loadImage("yaburetapoi.png"); // 破れたポイ
  brokenpoi.resize(brokenpoi.width*2, brokenpoi.height*2);
  creature1=loadImage("oden.png"); // 得体のしれない生物(おでん)
  creature2=loadImage("tanupuyo.png"); // 得体のしれない生物(たぬぷよ)
  creature3=loadImage("hebi.png"); // 得体のしれない生物(へび)
}
