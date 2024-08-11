import 'package:ak_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AkAppTheme.lightTheme,
      darkTheme: AkAppTheme.darkTheme,
    );
  }
}