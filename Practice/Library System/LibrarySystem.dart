import 'Book.dart';
import 'Member.dart';

class Librarysystem {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(String title, String authorName, int isbn) {
    books.add(
      Book(
        title: title,
        authoreName: authorName,
        isbn: isbn,
        isAvailable: true,
      ),
    );
    print("✅ Book added");
  }

  void removeBook(int isbn) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].isbn == isbn) {
        books.removeAt(i);
      }
    }
  }

  void searchBook(String title) {
    for (int i = 0; i < books.length; i++) {
      if (books[i].title == title) {
        print(
          "Book Name: ${books[i].title} \nAuthor Name: ${books[i].authoreName} \nISBN: ${books[i].isbn}",
        );
      }
    }
  }

  void issueBook(String isbn, Member member) {}
}
