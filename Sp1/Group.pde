import java.util.ArrayList;
import java.util.List;

class Group {
  String groupName;
  List<Country> countries;
  
  Group(String name) {
    this.groupName = name;
    this.countries = new ArrayList<Country>();
  }

  void addCountry(Country country) {
    countries.add(country);
  }

  void display(float x, float y, float boxWidth, float boxHeight, float spacing) {
    fill(255);
    textSize(24);
    textAlign(LEFT, TOP);
    text(groupName, x, y);
    
    float currentY = y + 40;
    for (Country c : countries) {
      c.display(x, currentY, boxWidth, boxHeight);
      currentY += boxHeight + spacing;
    }
  }
}
