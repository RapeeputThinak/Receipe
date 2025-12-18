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
      'assets/images/มะเขือ.webp',
      'Vegan Thai red curry',
      'Match shop-bought vegan curry paste with plenty of fresh ginger, mangetout, red pepper and Quorn to make a delicious meat-free Thai red curry',
      [Ingredient(name: 'vegetable oil', quantity: 1, unit: 'tbsp '), 
       Ingredient(name: 'garlic', quantity: 2, unit: 'cloves '),
       Ingredient(name: 'vegan thai red curry paste', quantity: 4, unit: 'tbsp'),
       Ingredient(name: 'coconut milk', quantity: 400, unit: 'tin'),
       Ingredient(name: 'Quorn Chicken Style Pieces', quantity: 500, unit: 'bag'),
       Ingredient(name: 'red pepper', quantity: 1, unit: 'sliced'),
       Ingredient(name: 'lime', quantity: 1, unit: 'juiced'),
      ]
      ),
  ];
}