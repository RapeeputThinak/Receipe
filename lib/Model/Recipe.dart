import 'package:w3/Model/ingredient.dart';

class Recipe {
  String imgLabel;
  String imageUrl;
  String detail;
  List<Ingredient> ingredients = [];
 
  Recipe(this.imageUrl, this.imgLabel, this.detail, [this.ingredients = const []]);
  
 
  static List<Recipe> samples =
  [
    Recipe(
      'assets/images/1.webp',
      'เสื้อยืดแขนสั้น ZOOTOPIA UT',
      'Introducing UT from "ZOOTOPIA," a family favorite series from Walt Disney Animation Studios. ​In addition to Judy and Nick, the collection also features a unique cast of characters from the latest film, "ZOOTOPIA 2".',
      [Ingredient(name: 'ราคา', quantity: 490, unit: 'บาท'),
      ]
      ),
      Recipe(
      'assets/images/2.webp',
      'เสื้อยืดแขนสั้น BABYMONSTER UT',
      'This collection draws inspiration from their bold and dynamic presence on the global stage, with a concept centered around one of BABYMONSTER s signature tracks, “BATTER UP.',
      [Ingredient(name: 'ราคา', quantity: 490, unit: 'บาท'),
      ]
      ),
       Recipe(
      'assets/images/4.webp',
      'เสื้อยืดแขนสั้น BABYMONSTER UT',
      'This collection draws inspiration from their bold and dynamic presence on the global stage, with a concept centered around one of BABYMONSTER s signature tracks, “BATTER UP.',
      [Ingredient(name: 'ราคา', quantity: 490, unit: 'บาท'),
      ]
      ),
      Recipe(
      'assets/images/5.webp',
      'เสื้อยืดแขนสั้น BABYMONSTER UT',
      'This collection draws inspiration from their bold and dynamic presence on the global stage, with a concept centered around one of BABYMONSTER s signature tracks, “BATTER UP.',
      [Ingredient(name: 'ราคา', quantity: 490, unit: 'บาท'),
      ]
      ),
  ];
  
}