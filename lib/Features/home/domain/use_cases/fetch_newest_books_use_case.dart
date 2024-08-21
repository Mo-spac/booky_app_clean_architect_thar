import 'package:booky_app_clean_arctect/Features/home/domain/entities/book_entity.dart';
import 'package:booky_app_clean_arctect/Features/home/domain/repos/home_repo.dart';
import 'package:booky_app_clean_arctect/core/errors/failure.dart';
import 'package:booky_app_clean_arctect/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
