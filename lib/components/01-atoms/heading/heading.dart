import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  static const DEFAULT_FONT_FAMILY = 'Roboto';
  static const DEFAULT_FONT_FAMILY_FALLBACK = [''];
  static const DEFAULT_HEADING = h4;
  static const DEFAULT_TEXT_ALIGN = TextAlign.start;

  static const h1 = TextStyle(
      fontFamily: DEFAULT_FONT_FAMILY,
      fontFamilyFallback: DEFAULT_FONT_FAMILY_FALLBACK,
      color: Colors.black,
      fontSize: 64.0,
      fontWeight: FontWeight.w700);

  static const h2 = TextStyle(
      fontFamily: DEFAULT_FONT_FAMILY,
      fontFamilyFallback: DEFAULT_FONT_FAMILY_FALLBACK,
      color: Colors.black,
      fontSize: 48.0,
      fontWeight: FontWeight.w500);

  static const h3 = TextStyle(
      fontFamily: DEFAULT_FONT_FAMILY,
      fontFamilyFallback: DEFAULT_FONT_FAMILY_FALLBACK,
      color: Colors.black,
      fontSize: 32.0,
      fontWeight: FontWeight.w500);

  static const h4 = TextStyle(
      fontFamily: DEFAULT_FONT_FAMILY,
      fontFamilyFallback: DEFAULT_FONT_FAMILY_FALLBACK,
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.w500);

  static const h5 = TextStyle(
      fontFamily: DEFAULT_FONT_FAMILY,
      fontFamilyFallback: DEFAULT_FONT_FAMILY_FALLBACK,
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.w300);

  static const h6 = TextStyle(
      fontFamily: DEFAULT_FONT_FAMILY,
      fontFamilyFallback: DEFAULT_FONT_FAMILY_FALLBACK,
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w300);

  final heading;
  final text;
  final align;

  Heading(
      {Key? key,
      this.align = DEFAULT_TEXT_ALIGN,
      this.text,
      this.heading = DEFAULT_HEADING})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(this.text,
          style: setHeading(this.heading), textAlign: this.align));

  TextStyle setHeading(String heading) {
    switch (heading) {
      case 'h1':
        return h1;
      case 'h2':
        return h2;
      case 'h3':
        return h3;
      case 'h4':
        return h4;
      case 'h5':
        return h5;
      case 'h6':
        return h6;
      default:
        return h4;
    }
  }
}
