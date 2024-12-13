import 'class.dart';
import 'memeber.dart';

void main(){
  Member alice = Member('Alice', 'M001');
  Book book1 = Book('Dart for Beginners', 'John Doe');
  alice.borrowBook(book1);
  alice.printMemberInfo();

}
