void gameover() { // ゲームオーバー画面
  fill(0, 0, 0, 100); // 白いウィンドウを表示する
  noStroke();
  rect(0, 200, width, 400);

  fill(0);
  text("ゲームオーバー", 10, 300);
  text("トクテン", 10, 350);

  stroke(2); // 描画設定を戻す
  noFill();
}
