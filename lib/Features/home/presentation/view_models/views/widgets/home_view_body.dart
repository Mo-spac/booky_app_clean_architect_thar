import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/best_seller_list_view_item.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/custom_app_bar.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/featured_list_view.dart';
import 'package:booky_app_clean_arctect/core/utils/assets_data.dart';
import 'package:booky_app_clean_arctect/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListView(),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
