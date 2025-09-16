class Country 
{
  String name;
  PImage flag;

  Country(String name, PImage flag) 
  {
    this.name = name;
    this.flag = flag;
  }

  void display(float x, float y, float w, float h, color stripeColor) 
  {
    // Background
    fill(255);
    rect(x, y, w, h);

    // Right stripe
    fill(stripeColor);
    rect(x + w - 10, y, 10, h);

    // Flag
    float flagW = h * 1.2;
    float flagH = h * 0.8;
    float flagX = x + 10;
    float flagY = y + (h - flagH) / 2;
    image(flag, flagX, flagY, flagW, flagH);

    // Name
    fill(0);
    textAlign(LEFT, CENTER);
    textSize(16);
    text(name.toUpperCase(), flagX + flagW + 15, y + h / 2);
  }
}
