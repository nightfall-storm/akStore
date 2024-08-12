import 'package:ak_store/common/styles/spacing_style.dart';
import 'package:ak_store/utils/constants/text_strings.dart';
import 'package:ak_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AkHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AkSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // * Logo, Title & SubTitle
              AkLoginHeader(dark: dark),

              // * Form
              AkLoginForm(),
              
              // * Divider
              AkLoginDivider(dark: dark, dividerText: AkTexts.orSignInWith.capitalize!),
              const SizedBox(width: AkSizes.spaceBtwSections),

              // * Footer
              AkSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}