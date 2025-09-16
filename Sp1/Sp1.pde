// Yellow color RGB: 229 223 32
// Teal color RGB: 16 202 236

List<Group> groups = new ArrayList<Group>();

void setup() {
  size(1200, 700);

  // Load flags - make sure you have these images in your data folder!
  PImage argentina = loadImage("Argentina.png");
  PImage australia = loadImage("Australia.png");
  PImage croatia = loadImage("Croatia.png");
  PImage denmark = loadImage("Denmark.png");
  PImage egypt = loadImage("Egypt.png");
  PImage france = loadImage("France.png");
  PImage iceland = loadImage("Iceland.png");
  PImage iran = loadImage("Iran.png");
  PImage morocco = loadImage("Morocco.png");
  PImage nigeria = loadImage("Nigeria.png");
  PImage peru = loadImage("Peru.png");
  PImage portugal = loadImage("Portugal.png");
  PImage russia = loadImage("Russia.png");
  PImage saudiArabia = loadImage("SaudiArabia.png");
  PImage spain = loadImage("Spain.png");
  PImage uruguay = loadImage("Uruguay.png");

  // Create countries
  Country cArgentina = new Country("Argentina", argentina);
  Country cAustralia = new Country("Australia", australia);
  Country cCroatia = new Country("Croatia", croatia);
  Country cDenmark = new Country("Denmark", denmark);
  Country cEgypt = new Country("Egypt", egypt);
  Country cFrance = new Country("France", france);
  Country cIceland = new Country("Iceland", iceland);
  Country cIran = new Country("Iran", iran);
  Country cMorocco = new Country("Morocco", morocco);
  Country cNigeria = new Country("Nigeria", nigeria);
  Country cPeru = new Country("Peru", peru);
  Country cPortugal = new Country("Portugal", portugal);
  Country cRussia = new Country("Russia", russia);
  Country cSaudiArabia = new Country("SaudiArabia", saudiArabia);
  Country cSpain = new Country("Spain", spain);
  Country cUruguay = new Country("Uruguay", uruguay);

  // Create groups A, B, C, D
  Group groupA = new Group("Group A");
  Group groupB = new Group("Group B");
  Group groupC = new Group("Group C");
  Group groupD = new Group("Group D");

  // Distribute countries evenly (4 per group)
  groupA.addCountry(cArgentina);
  groupA.addCountry(cAustralia);
  groupA.addCountry(cCroatia);
  groupA.addCountry(cDenmark);

  groupB.addCountry(cEgypt);
  groupB.addCountry(cFrance);
  groupB.addCountry(cIceland);
  groupB.addCountry(cIran);

  groupC.addCountry(cMorocco);
  groupC.addCountry(cNigeria);
  groupC.addCountry(cPeru);
  groupC.addCountry(cPortugal);

  groupD.addCountry(cRussia);
  groupD.addCountry(cSaudiArabia);
  groupD.addCountry(cSpain);
  groupD.addCountry(cUruguay);

  // Add groups to global list
  groups.add(groupA);
  groups.add(groupB);
  groups.add(groupC);
  groups.add(groupD);
}

void draw() {
  background(32, 51, 79);

  float x = 50;
  float y = 50;
  float boxWidth = (width - 250) / 4;  // space for 4 groups with margins
  float boxHeight = 80;
  float spacing = 10;

  // Display groups side by side
  for (int i = 0; i < groups.size(); i++) {
    Group g = groups.get(i);
    float groupX = x + i * (boxWidth + 50);
    g.display(groupX, y, boxWidth, boxHeight, spacing);
  }
}
