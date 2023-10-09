import 'dart:convert';
import 'dart:io';
import 'book_class.dart';


void main()async{
  var file = "assets/file.json";
  var myFile = File(file);

  List bookList = [];

  await myFile.readAsString().then((value) {
    var data = jsonDecode(value);
    // print(data);

    for(var item in data){
      var book = Book(title: item['title'], author: item['author'], price: item['price'], publish_year: item['publish_year']);
      bookList.add(book);
    }
  });

  print(bookList);

  // this code is for calculete total book price! this code is work with fold methed

  // bookList.fold(0.0, (previousValue, element) => previousValue + element.price);
  // print("Total books price is ${bookList.fold(0.0, (previousValue, element) => previousValue + element.price)} TK");

  // Do the same work with the code below!

  // double totalBookPrice = bookList.fold(0.0, (previousValue, element) => previousValue + element.price);
  // print("Total books price is ${totalBookPrice} TK");
  //


  // calculate totol book price! this code is work with forEach method
  num totalprice = 0.0;
  bookList.forEach((book){
    totalprice += book.price;
  });
  print("Total books price is ${totalprice} TK");

}