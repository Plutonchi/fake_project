class Food {
  String imageUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingridients;
  String about;
  bool hightLight;
  Food(
    this.imageUrl,
    this.desc,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingridients,
    this.about, {
    this.hightLight = false,
  });
  static List<Food> generetedRecommendedFoods() {
    return [
      Food(
        'assets/images/dish1.png',
        'No1. in Sales',
        "Soba Soup",
        '50 min',
        4.8,
        '325 cal.',
        120,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scalion': 'assets/images/ingre4.png',
          },
        ],
        "Simple put, ramen is a Japanese noudle soup with a combination of a rich flavoured broth, one of a variety of types of noodle and selection of meats or vegetables, often topped with a boiled egg",
        hightLight: true,
      ),
        Food(
        'assets/images/dish2.png',
        'Low Fat',
        "Sai Ua Samun Phrai",
        '50 min',
        4.8,
        '325 cal.',
        100,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scalion': 'assets/images/ingre4.png',
          },
        ],
        "Simple put, ramen is a Japanese noudle soup with a...",
      ),
    ];
  }

  static List<Food> generetedPopularFoods() {
    return [
      Food(
        'assets/images/dish4.png',
        'Most Popular',
        "Soba Soup",
        '50 min',
        4.8,
        '325 cal.',
      199,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scalion': 'assets/images/ingre4.png',
          },
        ],
        "Simple put, ramen is a Japanese noudle soup with a...",
      ),
      Food(
        'assets/images/dish4.png',
        'No1. in Sales',
        "Soba Soup",
        '50 min',
        4.8,
        '325 cal.',
        250,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scalion': 'assets/images/ingre4.png',
          },
        ],
        "Simple put, ramen is a Japanese noudle soup with a...",
      ),
    ];
  }
}
