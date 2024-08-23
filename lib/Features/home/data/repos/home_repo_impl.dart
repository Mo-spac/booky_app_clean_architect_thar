import 'package:booky_app_clean_arctect/Features/home/data/data_sources/home_local_data_sourse.dart';
import 'package:booky_app_clean_arctect/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:booky_app_clean_arctect/Features/home/domain/entities/book_entity.dart';
import 'package:booky_app_clean_arctect/Features/home/domain/repos/home_repo.dart';
import 'package:booky_app_clean_arctect/core/errors/failure.dart';
import 'package:booky_app_clean_arctect/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  // final ApiService apiService;
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSourse homeLocalDataSourse;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSourse,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksList = homeLocalDataSourse.fetchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSourse.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
