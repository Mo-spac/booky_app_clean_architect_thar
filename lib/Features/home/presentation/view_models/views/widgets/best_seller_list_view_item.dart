import 'package:booky_app_clean_arctect/core/utils/assets_data.dart';
import 'package:booky_app_clean_arctect/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
