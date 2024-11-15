import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/app.enums.dart';

class AppImageHolder extends StatelessWidget {
  final ImageType imageType;
  final BoxFit fit;
  final double? height;
  final double? width;

  final Widget _child;

  AppImageHolder.asset(
    String name, {
    super.key,
    this.fit = BoxFit.contain,
    this.imageType = ImageType.normal,
    this.height,
    this.width,
  }) : _child = imageType == ImageType.svg
            ? SvgPicture.asset(
                name,
                fit: fit,
                width: width,
                height: height,
              )
            : Image.asset(
                name,
                fit: fit,
                width: width,
                height: height,
              );

  AppImageHolder.file(
    File file, {
    super.key,
    this.fit = BoxFit.contain,
    this.imageType = ImageType.normal,
    this.height,
    this.width,
  }) : _child = imageType == ImageType.svg
            ? SvgPicture.file(
                file,
                fit: fit,
                width: width,
                height: height,
              )
            : Image.file(
                file,
                fit: fit,
                width: width,
                height: height,
              );

  AppImageHolder.memory(
    Uint8List bytes, {
    super.key,
    this.fit = BoxFit.contain,
    this.imageType = ImageType.normal,
    this.height,
    this.width,
  }) : _child = imageType == ImageType.svg
            ? SvgPicture.memory(
                bytes,
                fit: fit,
                width: width,
                height: height,
              )
            : Image.memory(
                bytes,
                fit: fit,
                width: width,
                height: height,
              );

  AppImageHolder.network(
    String src, {
    super.key,
    this.fit = BoxFit.contain,
    this.imageType = ImageType.normal,
    this.height,
    this.width,
  }) : _child = imageType == ImageType.svg
            ? SvgPicture.network(
                src,
                fit: fit,
                width: width,
                height: height,
              )
            : Image.network(
                src,
                fit: fit,
                width: width,
                height: height,
              );

  AppImageHolder.string(
    String string, {
    super.key,
    this.fit = BoxFit.contain,
    this.imageType = ImageType.normal,
    this.height,
    this.width,
  }) : _child = SvgPicture.string(
          string,
          fit: fit,
          width: width,
          height: height,
        );

  @override
  Widget build(BuildContext context) => _child;
}
