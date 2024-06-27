// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.bannerImage,
    required this.heading,
    required this.subHeading,
    required this.bannerColor,
    required this.height,
    required this.Imagewidth,
    required this.Imageheight,
  });

  final String bannerImage;
  final String heading;
  final String subHeading;
  final Color bannerColor;
  final num height;
  final double Imagewidth;
  final double Imageheight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height * height,
          width: size.width,
          color: bannerColor,
        ),
        Positioned(
          left: size.width * 0.045,
          top: size.height * 0.045,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "| $subHeading",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                heading,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 1,
          top: 1,
          child: Image.asset(
            bannerImage,
            width: Imagewidth,
            height: Imageheight,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
