import 'package:ak_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AkAppTheme.lightTheme,
      darkTheme: AkAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}