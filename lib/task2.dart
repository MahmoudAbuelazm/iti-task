import 'task1.dart';

class Novel extends Book {
  String genre = 'psychological and romane';

  Novel(
      {required super.title,
      required super.author,
      required super.pagenum,
      required this.genre});

  @override
  printfun() {
    print(
      'Title is : $title, Author is : $author, Pages are: $pagenum, Genre is: $genre',
    );
  }
}

void main() {
  // Example usage:
  final novel = Book(
    title: 'What remain of the day book',
    author: 'Mahmoud Darwish',
    pagenum: 123,
  );

  novel.printfun();
}
