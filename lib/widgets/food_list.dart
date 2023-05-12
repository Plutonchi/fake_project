import 'package:fake_project/constants/color.dart';
import 'package:fake_project/models/restaurant.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Restourant restourant;
  const FoodList(
      {super.key,
      required this.selected,
      required this.callBack,
      required this.restourant});

  @override
  Widget build(BuildContext context) {
    final category = restourant.menu.keys.toList();
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () => callBack(index),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selected == index ? kPrimaryColor : Colors.white,
                  ),
                  child: Text(
                    category[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          separatorBuilder: (_, index) => const SizedBox(
                width: 20,
              ),
          itemCount: category.length),
    );
  }
}
