import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AkLoginHeader extends StatelessWidget {
  const AkLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AkHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(
              dark ? AkImages.lightAppLogo : AkImages.darkAppLogo),
        ),
        Text(AkTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: AkSizes.sm),
        Text(AkTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
