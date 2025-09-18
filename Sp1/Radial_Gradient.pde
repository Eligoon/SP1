class RadialGradient
{
  color centerColor;
  color edgeColor;
  color nextCenterColor;
  color nextEdgeColor;
  float progress;
  float speed;
  float cx, cy;
  float maxRadius;
  int steps;

  float colorLerpAmount = 0;

  RadialGradient(float cx, float cy, float maxRadius, color centerColor, color edgeColor, float speed, int steps)
  {
    this.cx = cx;
    this.cy = cy;
    this.maxRadius = maxRadius;
    this.centerColor = centerColor;
    this.edgeColor = edgeColor;
    this.nextCenterColor = centerColor;
    this.nextEdgeColor = edgeColor;
    this.speed = speed;
    this.steps = steps;
    this.progress = 0;
  }

  void update()
  {
    // advance the gradient expansion
    progress += speed;

    if (progress > 1)
    {
      progress = 0;
      // When finished, choose new target colors to transition to next cycle
      nextCenterColor = color(random(16, 236), random(16, 236), random(16, 236), 100);
      nextEdgeColor = color(random(16, 255), random(16, 255), random(16, 200), 100); // keeping near yellow range, tweak as needed
      colorLerpAmount = 0;
    }

    // Smoothly interpolate centerColor and edgeColor toward next colors
    if (colorLerpAmount < 1)
    {
      colorLerpAmount += 0.01;
      centerColor = lerpColor(centerColor, nextCenterColor, colorLerpAmount);
      edgeColor = lerpColor(edgeColor, nextEdgeColor, colorLerpAmount);
    }
  }

  void display() {
    noStroke();
    for (int i = steps; i > 0; i--)
    {
      float stepNorm = i / float(steps); // 1 to 0
      float radius = maxRadius * progress * stepNorm;
      color c = lerpColor(centerColor, edgeColor, stepNorm);
      float alpha = map(stepNorm, 0, 1, 0, 150);
      fill(red(c), green(c), blue(c), alpha);
      ellipse(cx, cy, radius * 2, radius * 2);
    }
  }
}
