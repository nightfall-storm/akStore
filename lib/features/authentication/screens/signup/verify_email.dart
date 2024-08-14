import 'package:ak_store/common/widgets/success_screen/success_screen.dart';
import 'package:ak_store/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AkSizes.defaultSpace),
          child: Column(
            children: [
              // * Image
              Image(
                  image: AssetImage(AkImages.deliveredEmailIllustration),
                  width: AkHelperFunctions.screenWidth() * .6),
              const SizedBox(height: AkSizes.spaceBtwSections),

              // * Title & SubTitle
              Text(AkTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AkSizes.spaceBtwItems),
              Text('support@ak.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: AkSizes.spaceBtwItems),
              Text(AkTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AkSizes.spaceBtwSections),

              // * Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(
                            () => SuccessScreen(
                              image: AkImages.staticSuccessIllustration,
                              title: AkTexts.yourAccountCreatedTitle,
                              subTitle: AkTexts.yourAccountCreatedSubTitle,
                              onPressed: () => Get.to(() => const LoginScreen()),
                            ),
                          ),
                      child: const Text(AkTexts.tContinue))),
              const SizedBox(height: AkSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(AkTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
