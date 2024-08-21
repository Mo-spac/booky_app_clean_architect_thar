import 'package:booky_app_clean_arctect/Features/home/domain/entities/book_entity.dart';
import 'package:booky_app_clean_arctect/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
