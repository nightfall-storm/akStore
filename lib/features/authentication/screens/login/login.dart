import 'package:ak_store/common/styles/spacing_style.dart';
import 'package:ak_store/utils/constants/text_strings.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AkSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // * Logo, Title & SubTitle
              const AkLoginHeader(),

              // * Form
              const AkLoginForm(),
              
              // * Divider
              AkLoginDivider(dividerText: AkTexts.orSignInWith.capitalize!),

              const SizedBox(height: AkSizes.spaceBtwItems),

              // * Footer
              const AkSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}