import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_e_comerce/controllers/pageController.dart';
import 'package:new_e_comerce/screens/catogoryScreen.dart';
import 'package:new_e_comerce/screens/homeScreen.dart';
import 'package:new_e_comerce/screens/profileScreen.dart';
import 'package:new_e_comerce/screens/sraechScreen.dart';
import 'package:new_e_comerce/widgets/badge.dart';

// ignore: must_be_immutable
class mainPage extends StatelessWidget {
  mainPage({super.key});
  final pagecontroller = Get.put(pageControllers());
  List pages = const [homePage(), searchPage(), catogoryPage(), profilePage()];
  List pageName = ['HOME PAGE', 'SEARCH PRODUCTS', 'CATEGORYS', 'PROFILE'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
          title: Obx(() => Text(pageName[pagecontroller.index.value])),
          actions: const [
            Center(child: badge()),
            SizedBox(
              width: 15,
            )
          ]),
      body: Obx(() => pages[pagecontroller.index.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: pagecontroller.index.value,
            onTap: pagecontroller.pageIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_rounded,
                  ),
                  label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile')
            ]),
      ),
    );
  }
}
