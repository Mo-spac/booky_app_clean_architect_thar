import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/similar_books_list_view.dart';
import 'package:booky_app_clean_arctect/core/utils/styles_fonts.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        SimilarBooksListView()
      ],
    );
  }
}
