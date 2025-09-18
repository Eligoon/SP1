class Country 
{
  String name;     // Country name
  PImage flag;     // Country flag image

  Country(String name, PImage flag) 
  {
    this.name = name;
    this.flag = flag;
  }

  // Display the country as a box with flag and name
  void display(float x, float y, float w, float h, color stripeColor) 
  {
    // Removes the default black outlines
    noStroke(); 
    
    // Draw white background box
    fill(255);
    rect(x, y, w, h);

    // Draw stripe on the right side
    fill(stripeColor);
    rect(x + w - 10, y, 10, h);

    // Draw flag image
    float flagW = h * 1.8;
    float flagH = h;
    float flagX = x;
    float flagY = y + (h - flagH) / 2;
    image(flag, flagX, flagY, flagW, flagH);

    // Draw country name to the right of the flag
    fill(0);
    textAlign(LEFT, CENTER);
    textSize(16);
    text(name.toUpperCase(), flagX + flagW + 15, y + h / 2);
  }
}
