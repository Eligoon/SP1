class Group {
  String groupName;
  ArrayList<Country> countries;

  Group(String name) {
    this.groupName = name;
    this.countries = new ArrayList<Country>();
  }

  void addCountry(Country country) {
    countries.add(country);
  }
}
