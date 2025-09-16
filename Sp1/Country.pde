class Country {
  String name;
  PImage flag;

  Country(String name, PImage flag) {
    this.name = name;
    this.flag = flag;
  }

  void display(float x, float y, float w, float h) {
    fill(255);
    rect(x, y, w, h);

    float flagWidth = h * 0.8;
    float flagHeight = h * 0.8;
    float flagX = x + 10;
    float flagY = y + (h - flagHeight) / 2;
    image(flag, flagX, flagY, flagWidth, flagHeight);

    // Country name to right of flag
    fill(0);
    textAlign(LEFT, CENTER);
    textSize(16);

    float textX = flagX + flagWidth + 10;
    float textY = y + h / 2;
    text(name, textX, textY);
  }
}
