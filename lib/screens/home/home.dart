// ignore_for_file: depend_on_referenced_packages

import 'package:fake_project/constants/color.dart';
import 'package:fake_project/models/restaurant.dart';
import 'package:fake_project/screens/home/widget/custom_appbar.dart';
import 'package:fake_project/widgets/food_list.dart';
import 'package:fake_project/widgets/food_list_view.dart';
import 'package:fake_project/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restourant = Restourant.generetedRestourant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leftIcon: Icons.account_circle_outlined,
            rightIcon: Icons.search_outlined,
          ),
          RestourantInfoWidget(),
          FoodList(
              selected: selected,
              callBack: (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
              restourant: restourant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(
                  () {
                    selected = index;
                  },
                );
              },
              pageController,
              restourant,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restourant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    padding: 2,
                    width: 2,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
