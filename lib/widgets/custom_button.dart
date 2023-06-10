import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? callback;
  final double? fontsize;
  final double? width;
  final double? height;
  final Color? buttonBackgroundColor;
  final Color? fontColor;
  const CustomButton({
    super.key,
    required this.btnName,
    this.callback,
    this.height = 40.0,
    this.width = 122.0,
    this.fontsize = 20,
    this.buttonBackgroundColor = const Color(0xffFFFFFF),
    this.fontColor = const Color(0xff2F80ED),
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: buttonBackgroundColor,
        ),
        child: Center(
          child: Text(
            btnName,
            style: GoogleFonts.cambo(
              fontSize: fontsize,
              color: fontColor,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
