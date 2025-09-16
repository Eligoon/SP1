
class Country
{
  String name;
  PImage flag;

  Country (String name, String imagePath)
  {
    this.name = name;
    this.flag = loadImage(imagePath);
  }

  String getName()
  {
    return name;
  }

  void display(float x, float y, float w, float h)
  {
    fill(255);
    rect(x, y, w, h);

    float flagWidth = h * 0.8;
    float flagHeight = h *0.8;
    float flagX = x + 10;
    float flagY = y + (h - flagHeight) / 2;
    image(flag, flagX, flagY, flagWidth, flagHeight);

    // Writing the country name in center remaining space
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(16);

    float textX = x + w / 2 + flagWidth / 2;
    float textY = y + h / 2;
    text(name, textX, textY);
  }
}
