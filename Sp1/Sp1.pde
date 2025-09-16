// Yellow color RGB: 229 223 32
// Teal color RGB: 16 202 236


List<Country> countries = new ArrayList<Country>();

void setup()
{
  size(1000, 600);
  background(32, 51, 79);
}


void draw ()
{
  background(32, 51, 79);

  float x = 50;
  float y = 50;
  float boxWidth = width/2;
  float boxHeight = 80;

  for (int i = 0; i < countries.size(); i++)
  {
    Country c = countries.get(i);
    c.display(x, y + i * (boxHeight + 10), boxWidth, boxHeight);
  }
