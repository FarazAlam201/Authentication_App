import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
  final String imgPath;
  // ignore: prefer_const_constructors_in_immutables
  ResponsiveImage({super.key, required this.imgPath});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        imgPath,
        fit: BoxFit.fill,
      ),
    );
  }
}
