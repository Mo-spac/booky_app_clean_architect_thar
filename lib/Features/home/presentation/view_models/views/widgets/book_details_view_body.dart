import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/book_details_section.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/custom_book_details_app_bar.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksSection(),
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
