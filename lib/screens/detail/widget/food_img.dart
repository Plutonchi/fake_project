import 'package:fake_project/constants/color.dart';
import 'package:fake_project/models/food.dart';
import 'package:flutter/material.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  const FoodImg({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: kBackground,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(-1, 10),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Image.asset(food.imageUrl, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
