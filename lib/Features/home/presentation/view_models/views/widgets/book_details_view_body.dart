import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/books_button_action.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/custom_book_details_app_bar.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/custom_book_image.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/similar_books_list_view.dart';
import 'package:booky_app_clean_arctect/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.23),
                    child: CustomBookImage(),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  BooksButtonAction(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SimilarBooksListView(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
