import 'package:fake_project/models/food.dart';

class Restourant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restourant({
    required this.name,
    required this.waitTime,
    required this.distance,
    required this.label,
    required this.logoUrl,
    required this.desc,
    required this.score,
    required this.menu,
  });
  static Restourant generetedRestourant() {
    return Restourant(
      name: 'Restourant',
      waitTime: '24 -30 min',
      distance: '2.4 km',
      label: 'Restourant',
      logoUrl: 'assets/images/res_logo.png',
      desc: 'Orange Sandwiches is delicious',
      score: 4.7,
      menu: {
        'Recommend': Food.generetedRecommendedFoods(),
        'Popular': Food.generetedPopularFoods(),
        'Noodles': [],
        'Pizza': [],
      },
    );
  }
}
