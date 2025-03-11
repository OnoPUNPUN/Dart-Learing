void main() {
  // Set is like other language set. Set is used to store data in a book slaves
  // Set is used to store unique value. It will not allow duplicate value
  // it will also remove duplicate value automatically
  // it works like our math set but we can't add duplicate value in set

  Set<String> name = {"Tonmoy", "Mimber", "Rakib", "Rakib"};
  print(name); // Rakib will be remove automatically because it is duplicate

  // Add new value in set
  name.add("Nafiz");
  print(name);

  // add all value in set
  name.addAll(["Crack", "HUnt"]);
  print(name);

  // Remove value in set
  name.remove("Rakib");
  print(name);

  // Remove all value in set
  name.removeAll(["Crack", "HUnt"]);
  print(name);

  // check value in set
  print("Crack is in set: ${name.contains("Crack")}");

  // check element at specific index in set
  print("Element at index 0: ${name.elementAt(0)}");

  // print first value in set
  print("First value in set: ${name.first}");

  // print last value in set
  print("Last value in set: ${name.last}");

  // Mathamatical set
  Set<String> names2 = {'Taufiq', 'Kabir', 'Hasan', 'Sadman'};

  print(
      "Intersection value: ${name.intersection(names2)}"); // Will print common value
  print("Union value: ${name.union(names2)}"); // Will print all value
}
