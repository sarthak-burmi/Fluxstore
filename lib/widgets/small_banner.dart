import 'package:flutter/material.dart';

class SmallBannerWidget extends StatelessWidget {
  const SmallBannerWidget({
    super.key,
    required this.bannerImage,
    required this.heading,
    required this.subHeading,
    required this.bannerColor,
    required this.Imagewidth,
    required this.Imageheight,
  });

  final String bannerImage;
  final String heading;
  final String subHeading;
  final Color bannerColor;
  final double Imagewidth;
  final double Imageheight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          color: bannerColor,
          height: size.height * 0.18,
          width: size.width * 0.45,
        ),
        Positioned(
          top: size.height * 0.001,
          child: Image.asset(
            bannerImage,
            width: Imagewidth,
            height: Imageheight,
          ),
        ),
        Positioned(
          left: size.width * 0.21,
          top: size.height * 0.05,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "| $subHeading",
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                heading,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
