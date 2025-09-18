import java.util.ArrayList;
import java.util.List;

class Group
{
  String groupName;           // Name of the group (e.g., GROUP A)
  List<Country> countries;    // List of countries in the group
  color stripeColor;          // Color of stripe beside each country box
  color groupColor;           // Color used for group title text

  // Constructor initializes group with name and colors
  Group(String name, color stripeColor, color groupColor)
  {
    this.groupName = name;
    this.countries = new ArrayList<Country>();
    this.stripeColor = stripeColor;
    this.groupColor = groupColor;
  }

  // Add a country to the group
  void addCountry(Country country)
  {
    countries.add(country);
  }

  // Display the group title and each country inside it
  void display(float x, float y, float w, float h, float spacing)
  {
    // Draw group name as a header
    fill(groupColor);
    textAlign(CENTER, CENTER);
    textSize(18);
    text(groupName, x + w / 2, y + 20);

    // Draw each country, stacked vertically
    float cy = y + 40;
    for (Country c : countries)
    {
      c.display(x, cy, w, h, stripeColor);
      cy += h + spacing;
    }
  }
}
