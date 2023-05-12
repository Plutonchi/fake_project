import 'package:fake_project/constants/color.dart';
import 'package:fake_project/models/food.dart';
import 'package:fake_project/screens/detail/widget/food_detail.dart';
import 'package:fake_project/screens/detail/widget/food_img.dart';
import 'package:fake_project/screens/home/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  int quantity = 1;
  DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              leftIcon: Icons.arrow_back_ios_outlined,
              rightIcon: Icons.favorite_outline,
              leftCallback: () => Navigator.pop(context),
            ),
            FoodImg(food: food),
            FoodDetail(
              food: food,
              quantity: quantity,
            ),
          ],
        ),
      ),
      floatingActionButton: quantity == 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: kPrimaryColor,
              elevation: 2,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
            )
          : SizedBox(
              width: 100,
              height: 56,
              child: RawMaterialButton(
                onPressed: () {},
                fillColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                elevation: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Text(
                        quantity.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
