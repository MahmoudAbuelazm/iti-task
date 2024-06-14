class Book {
  String title, author;
  int pagenum;

  Book({
    required this.title,
    required this.author,
    required this.pagenum,
  });

  void printfun() {
    print(
      'Title is : $title, Author is : $author, Pages are: $pagenum',
    );
  }
}
