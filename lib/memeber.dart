import 'class.dart';

class Member {
  final String name;
  final String membershipNumber;
  final List<Book> books = [];

  Member(this.membershipNumber, this.name);

  void borrowBook(Book book) {
    books.add(book);
    print('$name borrowed "${book.title}".');
  }

  void returnBook(Book book) {
    if (books.remove(book)) {
      print("$name return the book ${book.title}");
    } else {
      print("$name don't borrow any books ");
    }
  }

  void printMemberInfo() {
    print('Member Name: $name');
    print('Membership Number: $membershipNumber');
    if (books.isNotEmpty) {

      print('Borrowed Books: ${books.map((book) => book.title)}');
    } else {
      print("No books borrowed");
    }
  }
}
