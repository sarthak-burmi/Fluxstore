import 'package:flutter/material.dart';
import 'package:fashion_app/widgets/auto_scroller.dart';
import 'package:fashion_app/widgets/banner.dart';
import 'package:fashion_app/widgets/small_banner.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              AutoScrollBanner(
                banners: [
                  BannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/girlBanner.png',
                    heading: 'Blue Summer\nare already in\nstore',
                    subHeading: 'Summer Collection 2024',
                    height: 0.27,
                    Imageheight: 240,
                    Imagewidth: 200,
                  ),
                  BannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/girlBanner.png',
                    heading: 'Blue Summer\nare already in\nstore',
                    subHeading: 'Summer Collection 2024',
                    height: 0.27,
                    Imageheight: 240,
                    Imagewidth: 200,
                  ),
                  BannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/girlBanner.png',
                    heading: 'Blue Summer\nare already in\nstore',
                    subHeading: 'Summer Collection 2024',
                    height: 0.27,
                    Imageheight: 240,
                    Imagewidth: 200,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              BannerWidget(
                bannerColor: Colors.grey.shade300,
                bannerImage: 'assets/images/boyBanner.png',
                heading: 'HANG OUT & PARTY ',
                subHeading: 'For Gen',
                height: 0.22,
                Imageheight: 260,
                Imagewidth: 190,
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallBannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/menFormal.png',
                    heading: 'THE OFFICE\n LIFE',
                    subHeading: 'T-Shirts',
                    Imageheight: 160,
                    Imagewidth: 90,
                  ),
                  SizedBox(width: size.width * 0.02),
                  SmallBannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/elegantDesign.png',
                    heading: 'ELEGANT\nDESIGN',
                    subHeading: 'Dress',
                    Imageheight: 160,
                    Imagewidth: 90,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallBannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/menFormal.png',
                    heading: 'THE OFFICE\n LIFE',
                    subHeading: 'T-Shirts',
                    Imageheight: 160,
                    Imagewidth: 90,
                  ),
                  SizedBox(width: size.width * 0.02),
                  SmallBannerWidget(
                    bannerColor: Colors.grey.shade200,
                    bannerImage: 'assets/images/elegantDesign.png',
                    heading: 'ELEGANT\nDESIGN',
                    subHeading: 'Dress',
                    Imageheight: 160,
                    Imagewidth: 90,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
