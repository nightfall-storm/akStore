import 'package:ak_store/features/authentication/controllers.onboarding/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class onboardingNextButton extends StatelessWidget {
  const onboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AkHelperFunctions.isDarkMode(context);
    return Positioned(
      right: AkSizes.defaultSpace,
      bottom: AkDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? AkColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3)),
    );
  }
}
