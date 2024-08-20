import 'package:ak_store/features/shop/screens/home/home.dart';
import 'package:ak_store/utils/constants/colors.dart';
import 'package:ak_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = AkHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          animationDuration: const Duration(milliseconds: 1000),
          height: 80,
          elevation: 0,
          backgroundColor: darkMode ? AkColors.black : AkColors.white,
          indicatorColor: darkMode ? AkColors.white.withOpacity(0.1) : AkColors.black.withOpacity(0.1),
          selectedIndex: controller._selectedIndex.value,
          onDestinationSelected: (index) => controller._selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx( () => controller.screens[controller._selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> _selectedIndex = 0.obs;

  final screens =[const HomeScreen(),Container(color: Colors.purple),Container(color: Colors.orange),Container(color: Colors.blue)];

}