import 'package:flutter/material.dart';
import 'package:w3/Model/Recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});
 
  @override
  State<RecipeDetail> createState() => RecipeDetailState();
}
 
class RecipeDetailState extends State<RecipeDetail> {
  int sliderValue = 1;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(widget.recipe.imageUrl),
          
          const SizedBox(height: 16.0),
 
          Text(
            widget.recipe.imgLabel,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
 
          Text(
            widget.recipe.detail,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
 
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    '${ingredient.name} ${ingredient.quantity * sliderValue} ${ingredient.unit}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                );
              },
            ),
          ),
 
          Slider(
            min: 1.0,
            max: 10.0,
            divisions: 10,
            label: '$sliderValue servings',
            value: sliderValue.toDouble(),
            onChanged: (newValue) {
              setState(() {
                sliderValue = newValue.toInt();
              });
            },
          ),
        ],
      ),
    );
  }
}
 