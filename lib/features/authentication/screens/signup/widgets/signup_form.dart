import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_conditions_checkbox.dart';

class AkSignupForm extends StatelessWidget {
  const AkSignupForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      children: [
        // * First Name & Last Name
    
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: AkTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            SizedBox(width: AkSizes.inputFieldRadius),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: AkTexts.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(height: AkSizes.spaceBtwInputFields),
    
        // * Username
    
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AkTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: AkSizes.spaceBtwInputFields),
    
        // * email
    
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AkTexts.email,
              prefixIcon: Icon(Iconsax.send_2)),
        ),
        const SizedBox(height: AkSizes.spaceBtwInputFields),
    
        // * phone number
    
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AkTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: AkSizes.spaceBtwInputFields),
    
        // * password
    
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AkTexts.password,
              prefixIcon: Icon(Iconsax.password_check)),
        ),
        const SizedBox(height: AkSizes.spaceBtwSections),
    
        //* Terms & Conditions checkbox
    
        const AkTermsConditionsCheckbox(),
        SizedBox(height: AkSizes.spaceBtwSections),
    
        //* Signup Button
    
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(AkTexts.createAccount))),
      ],
    ));
  }
}

