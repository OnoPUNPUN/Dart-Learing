import 'dart:io';

import 'LibrarySystem.dart';

void main() {
  var libarySystem = Librarysystem();

  while (true) {
    print("\nLibary System");
    print("1. Add Books");
    print("2. Remove Book");
    print("3. Search Book");
    print("4. Issue a Book");
    print("5. Return a Book");
    print("6. Show All Books");
    print("7. Show Borrowed Books");
    print("8. Exit");
    stdout.write("Choose an option: ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter Title of the Book: ");
        var title = stdin.readLineSync();
        stdout.write("Enter Author Name: ");
        var authorName = stdin.readLineSync();
        stdout.write("Enter ISBN: ");
        var ISBN = int.tryParse(stdin.readLineSync()!);
        if (title != null && authorName != null && ISBN != null && ISBN > 0) {
          libarySystem.addBook(title, authorName, ISBN);
        } else {
          print("⚠️ Invaild Oparations Enter all Data");
        }
        break;
      case '2':
        stdout.write("Enter the isbn of the book: ");
        var isbn = int.tryParse(stdin.readLineSync()!);
        if (isbn != null && isbn > 0) {
          libarySystem.removeBook(isbn);
        }
        break;
      case '8':
        exit(0);
    }
  }
}
