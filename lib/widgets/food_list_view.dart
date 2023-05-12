import 'package:fake_project/models/restaurant.dart';
import 'package:fake_project/screens/screen.dart';
import 'package:fake_project/widgets/food_item.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callBack;
  final PageController pageController;
  final Restourant restourant;
  const FoodListView(
      this.selected, this.callBack, this.pageController, this.restourant,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final category = restourant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: category
            .map((e) => ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            food: restourant.menu[category[selected]]![index],
                          ),
                        ),
                      );
                      print("213213123");
                    },
                    child:
                        FoodItem(restourant.menu[category[selected]]![index]),
                  ),
                  separatorBuilder: (_, index) => const SizedBox(height: 15),
                  itemCount: restourant.menu[category[selected]]!.length,
                ))
            .toList(),
      ),
    );
  }
}
