void main() {
  // Key value
  // Every key has value and value can be anything

  var person = {
    "name": "Tonmoy", // Key is name and value is Tonmoy
    "age": 23,
    "exp": "2 years",
    "hobby": ["Coding", "Gaming", "Manga"] // We can store list in map
  };

  // map with different data types. WE can store different data types in map
  // Here Map<KeyDataType, ValueDataType>
  Map<String, String> person2 = {
    "name": "Tonmoy",
    "age": "23",
    "exp": "2 years",
  };

  print(person);

  print(person["name"]);
  print(person["age"]);

  // Add new value in map
  person["address"] = "Dhaka";

  print(person);

  // Update value in map
  person["age"] = 24;

  print(person);

  // Remove a key in map
  person.remove("exp");
  print(person);

  // Check key exist or not
  print(person.containsKey("name")); // true or false

  // check value exist or not
  print(person.containsValue("Tonmoy")); // true or false

  // print all keys in map
  print(person.keys);

  // print all values in map
  print(person.values);

  // check length of map
  print(person.length);

  // merge two map
  var additionalinfo = {
    "Subject": "CSE",
    "University": "AIUB",
  };

  person.addAll(additionalinfo);
  print(person);

  // convert map to list
  var keyList = person.keys.toList();
  print(keyList);
  var valueList = person.values.toList();
  print(valueList);

  // clear map
  person.clear();
  print(person);
}
