import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoScrollBanner extends HookWidget {
  final List<Widget> banners;

  const AutoScrollBanner({required this.banners, super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);

    useEffect(() {
      Timer? timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        if (currentPage.value < banners.length - 1) {
          currentPage.value++;
        } else {
          currentPage.value = 0;
        }
        pageController.animateToPage(
          currentPage.value,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeIn,
        );
      });

      return () {
        timer.cancel();
      };
    }, [pageController]);

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: banners.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                child: banners[index],
              );
            },
            onPageChanged: (index) {
              currentPage.value = index;
            },
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: banners.length,
                effect: const WormEffect(
                  activeDotColor: Colors.black,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
