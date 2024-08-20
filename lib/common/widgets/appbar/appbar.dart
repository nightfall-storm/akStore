import 'package:ak_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class AkAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AkAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AkDeviceUtils.getAppBarHeight());
}
