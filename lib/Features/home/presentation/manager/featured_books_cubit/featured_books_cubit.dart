import 'package:bloc/bloc.dart';
import 'package:booky_app_clean_arctect/Features/home/domain/entities/book_entity.dart';
import 'package:booky_app_clean_arctect/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await featuredBooksUseCase.call();

    result.fold((failure) {
      emit(FeaturedBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
