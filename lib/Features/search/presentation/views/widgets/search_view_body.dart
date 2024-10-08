import 'package:booky_app_clean_arctect/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booky_app_clean_arctect/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:booky_app_clean_arctect/core/utils/styles_fonts.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
