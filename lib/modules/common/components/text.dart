import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({
    Key? key,
    required this.title,
    this.textAlign,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14,
    this.color = textColorBlack,
    this.maxLines,
    this.overflow = TextOverflow.visible,
    this.decoration = TextDecoration.none,
  }) : super(key: key);
  final String title;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        color: color,
        decoration: decoration,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class BodyTextWithPadding extends StatelessWidget {
  const BodyTextWithPadding({
    Key? key,
    required this.title,
    this.padding,
    this.textAlign,
    this.color,
    this.fontSize,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);
  final String title;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(title,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          style: color == null && fontSize == null
              ? Theme.of(context).textTheme.bodyLarge
              : fontSize == null
                  ? Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: color)
                  : color == null
                      ? Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: fontSize,
                          )
                      : Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: fontSize, color: color)),
    );
  }
}
