import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/custom_app_bar.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/featured__books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
