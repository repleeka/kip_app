import 'package:flutter/material.dart';

class SupText extends StatelessWidget {
  ///[SupText] Custom widget that will be used for the superscripting a text
  ///
  ///The properties [text] and [superText] is required and should not be null,
  ///and [textStyle] and [superStyle] are optional.
  ///
  final String text;
  final TextStyle? textStyle;
  final String superText;
  final TextStyle? superStyle;

  SupText({
    required this.text,
    required this.superText,
    this.textStyle,
    this.superStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: this.textStyle,
        children: [
          TextSpan(
            text: this.text,
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.top,
            child: Transform.translate(
              offset: const Offset(0.0, -7.0),
              child: Text(
                this.superText,
                style: this.superStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
