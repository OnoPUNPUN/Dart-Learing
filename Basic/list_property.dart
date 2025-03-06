void main() {
  // List is like other language array. List is used to store data in a book slaves
  print("List property");

  var number = [1, 3, 5, 8, 11];
  print(number.first); // will print the first value
  print(number.last); // will print the last value
  print(number.reversed); // will print these number as reverse.
  number.sort(); // will sort everything from small to large.
  print(number);

  print("***************************************************");

  print("Growable List: ");
  number = [1, 7, 8, 9];
  number.add(10); // will add value at the last of the list
  print(number);

  number.addAll([20, 30, 40]); // wil add all numbers at the end
  print(number);

  number.insert(1,
      2); // will add values on specific index. here 1 is index and 2 is value
  print(number);

  number.insertAll(0, [100, 200, 300]); // will add all values on specific index
  print(number);

  print("***************************************************");

  print("List Remove/Update:");
  number = [1, 2, 3, 4, 5];
  number[0] = 100; //will update the number (100) at index(0).
  print(number);
  number.removeAt(0); //will remove the number at index(0).
  print(number);
  number.remove(5); //will remove all the numbers.
  print(number);
}
