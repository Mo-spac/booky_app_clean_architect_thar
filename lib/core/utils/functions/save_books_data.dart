import 'package:booky_app_clean_arctect/Features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books, String booksName) {
  var box = Hive.box(booksName);
  box.addAll(books);
}
