class Book {
  String title;
  String author;
  num price;
  int publish_year;

  Book({required this.title, required this.author, required this.price, required this.publish_year});

  @override
  String toString() {
    return "Title: $title \n Author: $author \n Book price: $price \n Publish year: $publish_year  \n \n ";

  }


}