class babymobs extends Enemy {
  int timer;

  babymobs (int x, int y) {
    super(1000, 90, x, y);
    timer = 0;
  }

  void show() {
    fill(RED);
    circle(location.x, location.y, 15);
    fill(BLACK);
    textSize(10);
    text(HEALTHPOINTS, location.x, location.y);
  }

  void act() {
    super.act();
    timer++;
    if (timer > 90) {
      myObjects.add(new babymobs(rx, ry));
      timer = 0;
    }
  }
}
