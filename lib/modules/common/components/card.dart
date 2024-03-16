import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    this.height,
    this.width = 250,
    this.clipBehavior = Clip.none,
    this.border,
    this.borderRadius,
    this.margin,
    this.color,
    this.radius = 20,
    this.boxShadow,
    this.child,
    this.padding,
    this.constraints,
  }) : super(key: key);
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double radius;
  final double width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Clip clipBehavior;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clipBehavior,
      padding: padding,
      margin: margin,
      height: height ?? Get.height - 152,
      width: width,
      constraints: constraints,
      decoration: BoxDecoration(
          border: border,
          color: color,
          //Theme.of(context).cardColor,
          borderRadius: borderRadius ?? BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: child,
    );
  }
}