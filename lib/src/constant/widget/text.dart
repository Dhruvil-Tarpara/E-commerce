import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FxText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  const FxText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.fontWeight,
    this.fontFamily,
    this.textOverflow, this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      overflow: textOverflow,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
