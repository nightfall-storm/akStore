import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class AkTermsConditionsCheckbox extends StatelessWidget {
  const AkTermsConditionsCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AkHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: AkSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${AkTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${AkTexts.privacyPolicy} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                    color:
                        dark ? AkColors.white : AkColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? AkColors.white : AkColors.primary,
                  )),
          TextSpan(
              text: '${AkTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: AkTexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                    color:
                        dark ? AkColors.white : AkColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? AkColors.white : AkColors.primary,
                  )),
        ])),
      ],
    );
  }
}
