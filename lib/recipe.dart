import 'package:recipes/ingredient.dart';

class Recipe {
 String imgLabel; // Label for the image
 String imageUrl; // URL of the image
 String description; // Description of the recipe
 List<Ingredient> ingredients; // List of ingredients
  // construtor
 Recipe(this.imageUrl, this.imgLabel, this.description, this.ingredients);
  static List<Recipe> samples = [
   Recipe(
   'assets/images/GreenThaiFishCurry.webp',
   'Aubergine Thai Jungle Curry',
   'A spicy Thai jungle curry made with aubergine, herbs, and aromatic spices. It features a light broth with strong flavors and no coconut milk.',
   [
    Ingredient(name: 'Aubergines', quantity: 2, unit: ''),
    Ingredient(name: 'Jungle curry paste', quantity: 2, unit: 'tbsp'),
    Ingredient(name: 'Vegetable stock', quantity: 2, unit: 'cups'),
    Ingredient(name: 'Kaffir lime leaves', quantity: 3, unit: ''),
    Ingredient(name: 'Thai chilies', quantity: 2, unit: ''),
    Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
    Ingredient(name: 'Thai basil', quantity: 1, unit: 'handful'),
   ],
  ),
  Recipe(
    'assets/images/PadThai.webp',
    'Pad Thai',
    'A classic Thai stir-fried noodle dish with tamarind, fish sauce, and vegetables.',
    [
      Ingredient(name: 'Rice noodles', quantity: 200, unit: 'g'),
      Ingredient(name: 'Shrimp', quantity: 10, unit: ''),
      Ingredient(name: 'Eggs', quantity: 2, unit: ''),
      Ingredient(name: 'Bean sprouts', quantity: 1, unit: 'cup'),
      Ingredient(name: 'Peanuts', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Tamarind paste', quantity: 3, unit: 'tbsp'),
    ],
  ),
  Recipe(
    'assets/images/pumpkincurry.webp',
    'Thai pumpkin curry (gaeng fak thong)',
    'A creamy and flavorful Thai curry made with pumpkin and coconut milk.',
    [
      Ingredient(name: 'Pumpkin', quantity: 500, unit: 'g'),
      Ingredient(name: 'Red curry paste', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Coconut milk', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Thai basil', quantity: 1, unit: 'handful'),
      Ingredient(name: 'Palm sugar', quantity: 1, unit: 'tbsp'),
      Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
    ],
  ),
  Recipe(
    'assets/images/Turkey-Larb.webp',
    'Thai-style cauli larb salad',
    'A refreshing and spicy salad made with turkey, herbs, and lime.',
    [
      Ingredient(name: 'Minced turkey', quantity: 300, unit: 'g'),
      Ingredient(name: 'Cauliflower florets', quantity: 1, unit: 'head'),
      Ingredient(name: 'Lime juice', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'Chili flakes', quantity: 1, unit: 'tsp'),
      Ingredient(name: 'Toasted rice powder', quantity: 1, unit: 'tbsp'),
      Ingredient(name: 'Mint leaves', quantity: 1, unit: 'handful'),
    ],
  ),
];
   
}