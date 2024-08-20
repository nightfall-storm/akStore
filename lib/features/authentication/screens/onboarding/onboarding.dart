import 'package:ak_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ak_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // * Horizontal Scroll Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AkImages.onBoardingImage1,
                title: AkTexts.onBoardingTitle1,
                subTitle: AkTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AkImages.onBoardingImage2,
                title: AkTexts.onBoardingTitle2,
                subTitle: AkTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AkImages.onBoardingImage3,
                title: AkTexts.onBoardingTitle3,
                subTitle: AkTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // * Skip Button
          const OnBoardingSkip(),

          // * Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // * Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

