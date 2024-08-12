import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class AkLoginForm extends StatelessWidget {
  const AkLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AkSizes.spaceBtwSections),
        child: Column(
          children: [
            // * Email
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AkTexts.email),
            ),
            const SizedBox(height: AkSizes.spaceBtwInputFields),
    
            // * Password
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: AkTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: AkSizes.spaceBtwInputFields / 2),
    
            // * Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // * Remember Me
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text(AkTexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(AkTexts.forgetPassword)),
                // * Forgot Password
              ],
            ),
            const SizedBox(height: AkSizes.spaceBtwSections),
    
            // * Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(AkTexts.signIn))),
    
            const SizedBox(height: AkSizes.spaceBtwItems),
    
            // * Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(AkTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
