import 'package:ak_store/common/widgets/login_signup/form_divider.dart';
import 'package:ak_store/common/widgets/login_signup/social_buttons.dart';
import 'package:ak_store/utils/constants/sizes.dart';
import 'package:ak_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AkSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // * Title
              Text(
                AkTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AkSizes.spaceBtwSections),

              // * Form

              const AkSignupForm(),
              const SizedBox(height: AkSizes.spaceBtwSections),
              
              // * Divider

              AkLoginDivider(dividerText: AkTexts.orSignUpWith.capitalize!),

              const SizedBox(height: AkSizes.spaceBtwItems),

              // * Social Buttons

              const AkSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

