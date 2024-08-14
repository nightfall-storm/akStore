import 'package:ak_store/features/authentication/screens/login/login.dart';
import 'package:ak_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AkSizes.defaultSpace),
          child: Column(
            children: [
              // * Image with 60% of screen width
              Image(
                  image: const AssetImage(AkImages.deliveredEmailIllustration),
                  width: AkHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: AkSizes.spaceBtwSections),

              // * Title & SubTitle
              Text(AkTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AkSizes.spaceBtwItems),
              Text(AkTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AkSizes.spaceBtwSections),

              // * Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const LoginScreen()),
                  child: const Text(AkTexts.done),
                  ),
                ),
              const SizedBox(height: AkSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AkTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
