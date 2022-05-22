import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  static const DEFAULT_TEXT_COLOR = Color(0xFFFFFFFF);
  static const DEFAULT_BACKGROUND_COLOR = Color(0xFF2196F3);
  static const DEFAULT_TEXT_ALIGN = TextAlign.center;

  final text;
  final text_color;
  final background_color;
  final align;

  Tag(
      {Key? key,
      this.text,
      this.text_color = DEFAULT_TEXT_COLOR,
      this.background_color = DEFAULT_BACKGROUND_COLOR,
      this.align = DEFAULT_TEXT_ALIGN})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        constraints: const BoxConstraints(
          minWidth: 84,
        ),
        color: this.background_color,
        child: Text(this.text,
            style: TextStyle(
              fontSize: 32.0,
              color: this.text_color,
            ),
            textAlign: this.align),
      );
}
