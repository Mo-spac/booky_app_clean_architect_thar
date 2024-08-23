import 'package:bloc/bloc.dart';
import 'package:booky_app_clean_arctect/Features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
