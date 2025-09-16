import java.util.*;

class Group
{
  String groupName;
  List<Country> countries;
  color stripeColor;
  color groupColor;

  Group(String name, color stripeColor, color groupColor)
  {
    this.groupName = name;
    this.countries = new ArrayList<Country>();
    this.stripeColor = stripeColor;
    this.groupColor = groupColor;
  }

  void addCountry(Country country)
  {
    countries.add(country);
  }

  void display(float x, float y, float w, float h, float spacing)
  {
    // Header
    fill(groupColor);
    textAlign(CENTER, CENTER);
    textSize(18);
    text(groupName, x + w / 2, y + 20);

    float cy = y + 40;
    for (Country c : countries)
    {
      c.display(x, cy, w, h, stripeColor);
      cy += h + spacing;
    }
  }
}
