// Yellow color RGB: 229 223 0
// Teal color RGB: 16 202 236

// Declare a global list to hold all the groups
List<Group> groups = new ArrayList<Group>();

void setup()
{
  // Set canvas size and background color
  size(1000, 600);
  background(32, 51, 79);

  // Set the font for drawing text
  textFont(createFont("Arial Bold", 16));

  // Load country flag images from the "data" folder
  // Group A flags
  PImage russia = loadImage("Russia.png");
  PImage saudi = loadImage("SaudiArabia.png");
  PImage egypt = loadImage("Egypt.png");
  PImage uruguay = loadImage("Uruguay.png");

  // Group B flags
  PImage portugal = loadImage("Portugal.png");
  PImage spain = loadImage("Spain.png");
  PImage morocco = loadImage("Morocco.png");
  PImage iran = loadImage("Iran.png");

  // Group C flags
  PImage france = loadImage("France.png");
  PImage australia = loadImage("Australia.png");
  PImage peru = loadImage("Peru.png");
  PImage denmark = loadImage("Denmark.png");

  // Group D flags
  PImage argentina = loadImage("Argentina.png");
  PImage iceland = loadImage("Iceland.png");
  PImage croatia = loadImage("Croatia.png");
  PImage nigeria = loadImage("Nigeria.png");

  // Create Groups and add Countries to each

  // Group A: teal stripe
  Group groupA = new Group("GROUP A", color(16, 202, 236), color(16, 202, 236));
  groupA.addCountry(new Country("Russia", russia));
  groupA.addCountry(new Country("Saudi Arabia", saudi));
  groupA.addCountry(new Country("Egypt", egypt));
  groupA.addCountry(new Country("Uruguay", uruguay));

  // Group B: yellow stripe
  Group groupB = new Group("GROUP B", color(229, 223, 0), color(229, 223, 0));
  groupB.addCountry(new Country("Portugal", portugal));
  groupB.addCountry(new Country("Spain", spain));
  groupB.addCountry(new Country("Morocco", morocco));
  groupB.addCountry(new Country("Iran", iran));

  // Group C: teal stripe
  Group groupC = new Group("GROUP C", color(16, 202, 236), color(16, 202, 236));
  groupC.addCountry(new Country("France", france));
  groupC.addCountry(new Country("Australia", australia));
  groupC.addCountry(new Country("Peru", peru));
  groupC.addCountry(new Country("Denmark", denmark));

  // Group D: yellow stripe
  Group groupD = new Group("GROUP D", color(229, 223, 0), color(229, 223, 0));
  groupD.addCountry(new Country("Argentina", argentina));
  groupD.addCountry(new Country("Iceland", iceland));
  groupD.addCountry(new Country("Croatia", croatia));
  groupD.addCountry(new Country("Nigeria", nigeria));

  // Add all groups to the list
  groups.add(groupA);
  groups.add(groupB);
  groups.add(groupC);
  groups.add(groupD);
}

void draw()
{
  // Clear the screen each frame with background color
  background(32, 51, 79);

  // Draw the white line going down the middle
  fill(255);
  rect(width - 10, 0, 5, height); //FIX THIS

  // Dimensions for each country display box
  float boxW = 400;
  float boxH = 40;
  float spacing = 5;

  // X positions for left and right columns
  float leftX = 50;
  float rightX = width / 2 + 30;

  // Y positions for top and bottom rows
  float topY = 50;
  float midY = 350;

  // Display Group A and B on the left
  groups.get(0).display(leftX, topY, boxW, boxH, spacing);  // Group A
  groups.get(1).display(leftX, midY, boxW, boxH, spacing);  // Group B

  // Display Group C and D on the right
  groups.get(2).display(rightX, topY, boxW, boxH, spacing); // Group C
  groups.get(3).display(rightX, midY, boxW, boxH, spacing); // Group D
}
