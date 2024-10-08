import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/widgets/book_rating.dart';
import 'package:booky_app_clean_arctect/constants.dart';
import 'package:booky_app_clean_arctect/core/utils/app_router.dart';
import 'package:booky_app_clean_arctect/core/utils/assets_data.dart';
import 'package:booky_app_clean_arctect/core/utils/styles_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                // width: 100,
                // height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.textImg),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
