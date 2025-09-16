// Yellow color RGB: 229 223 32
// Teal color RGB: 16 202 236

List<Group> groups = new ArrayList<Group>();

void setup()
{
  size(1000, 600);
  background(32, 51, 79);
  textFont(createFont("Arial Bold", 16));

  // Load all flags — make sure to place these images in the "data" folder
  PImage russia = loadImage("Russia.png");
  PImage saudi = loadImage("SaudiArabia.png");
  PImage egypt = loadImage("Egypt.png");
  PImage uruguay = loadImage("Uruguay.png");

  PImage portugal = loadImage("Portugal.png");
  PImage spain = loadImage("Spain.png");
  PImage morocco = loadImage("Morocco.png");
  PImage iran = loadImage("Iran.png");

  PImage france = loadImage("France.png");
  PImage australia = loadImage("Australia.png");
  PImage peru = loadImage("Peru.png");
  PImage denmark = loadImage("Denmark.png");

  PImage argentina = loadImage("Argentina.png");
  PImage iceland = loadImage("Iceland.png");
  PImage croatia = loadImage("Croatia.png");
  PImage nigeria = loadImage("Nigeria.png");

  // Group A
  Group groupA = new Group("GROUP A", color(16, 202, 236), color(16, 202, 236));
  groupA.addCountry(new Country("Russia", russia));
  groupA.addCountry(new Country("Saudi Arabia", saudi));
  groupA.addCountry(new Country("Egypt", egypt));
  groupA.addCountry(new Country("Uruguay", uruguay));

  // Group B
  Group groupB = new Group("GROUP B", color(229, 223, 32), color(229, 223, 32));
  groupB.addCountry(new Country("Portugal", portugal));
  groupB.addCountry(new Country("Spain", spain));
  groupB.addCountry(new Country("Morocco", morocco));
  groupB.addCountry(new Country("Iran", iran));

  // Group C
  Group groupC = new Group("GROUP C", color(16, 202, 236), color(16, 202, 236));
  groupC.addCountry(new Country("France", france));
  groupC.addCountry(new Country("Australia", australia));
  groupC.addCountry(new Country("Peru", peru));
  groupC.addCountry(new Country("Denmark", denmark));

  // Group D
  Group groupD = new Group("GROUP D", color(229, 223, 32), color(229, 223, 32));
  groupD.addCountry(new Country("Argentina", argentina));
  groupD.addCountry(new Country("Iceland", iceland));
  groupD.addCountry(new Country("Croatia", croatia));
  groupD.addCountry(new Country("Nigeria", nigeria));

  // Add to list
  groups.add(groupA);
  groups.add(groupB);
  groups.add(groupC);
  groups.add(groupD);
}

void draw()
{
  background(32, 51, 79);

  float boxW = 400;
  float boxH = 40;
  float spacing = 5;

  float leftX = 50;
  float rightX = width / 2 + 30;

  float topY = 50;
  float midY = 350;

  // Left column (A, B)
  groups.get(0).display(leftX, topY, boxW, boxH, spacing);
  groups.get(1).display(leftX, midY, boxW, boxH, spacing);

  // Right column (C, D)
  groups.get(2).display(rightX, topY, boxW, boxH, spacing);
  groups.get(3).display(rightX, midY, boxW, boxH, spacing);
}
