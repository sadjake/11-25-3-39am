class DroppedItem extends GameObject {

  int type;
  color c;
  Weapon w;

  DroppedItem(float x, float y, int _rx, int _ry) {
    type = GUN;
    w = new ShotGun();
    HEALTHPOINTS = 1;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    size = 20;
    rx= _rx;
    ry= _ry;
    c = YELLOW;
  }

  void show() {
    stroke(BLACK);
    strokeWeight(2);
    fill(c);
    circle(location.x, location.y, size);
  }
  
  void act() {
  }
}
