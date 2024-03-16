import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    this.height = 70,
    this.width = 75,
    this.margin,
    this.color,
    this.bgColor,
    this.fit = BoxFit.cover,
    this.url = imageUrlDummy,
    this.radius = 25,
    this.boxShadow,
    // this.child,
    this.padding,
    this.imagePadding,
    this.border,
  }) : super(key: key);
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? imagePadding;
  final double height;
  final double radius;
  final double width;
  final String url;
  final BoxFit? fit;
  final List<BoxShadow>? boxShadow;
  // final Widget? child;
  final Color? color;
  final Color? bgColor;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Container(
        margin: margin,
        height: height,
        padding: imagePadding,
        width: width,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            border: border,
            // image: const DecorationImage(image: NetworkImage(imageUrlDummy)),
            // color: color ? cardBlueColor,
            borderRadius: BorderRadius.circular(radius),
            color: bgColor ?? white,
            boxShadow: boxShadow ?? []),
        child: kIsWeb
            ? Image.network(
                url,
                fit: BoxFit.contain,
              )
            : CachedNetworkImage(
                height: height,
                width: width,
                fit: url == imageUrlDummy ? BoxFit.contain : fit,
                imageUrl: url,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return Image.network(
                    imageUrlDummy,
                    fit: BoxFit.contain,
                  );
                },
                errorWidget: (context, url, error) => Image.network(
                  imageUrlDummy,
                  fit: BoxFit.contain,
                ),
              ),
      ),
    );
  }
}

const imageUrlDummy = 'https://picsum.photos/200';