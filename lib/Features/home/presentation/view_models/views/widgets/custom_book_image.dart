import 'package:booky_app_clean_arctect/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 4,
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
    );
  }
}
