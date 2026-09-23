import 'package:c_commerce/features/shop/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';

class NevigationMenu extends StatelessWidget {
  const NevigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(navigationConroller());

    return Scaffold(
      bottomNavigationBar: Obx(
        () =>
     
       NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) => controller.selectedIndex.value = index ,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
        ]
        ),
        
    ) ,
    body: Obx(() => controller.screens[controller.selectedIndex.value])
    );
  }
}


class navigationConroller extends GetxController{
  final Rx<int> selectedIndex = 0.obs ;
  final screens = [HomeScreen() , Container(color: Colors.purple,), Container(color: Colors.orange,) , Container(color: Colors.blue,)];
}