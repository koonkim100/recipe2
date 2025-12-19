import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget{
  Recipe recipe;
  int sliderVal = 1;
  RecipeDetail({super.key, required this.recipe});

  @override
  State<StatefulWidget> createState(){
   return RecipeDetailState();
  }

}
class RecipeDetailState extends State<RecipeDetail>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(widget.recipe.imageUrl),
            const SizedBox(height: 20),
            Text(
              widget.recipe.imgLabel,
              style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.recipe.description,
                style: const TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0), // วิธีที่ 1: ใส่ padding ให้กับรายการทั้งหมดในคราวเดียว
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];

                  // วิธีที่ 2: ห่อเฉพาะตัว Text ด้วย Padding (เลือกใช้วิธีใดวิธีหนึ่ง)
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0), // เว้นซ้าย-ขวา 16.0
                    child: Text(
                      '${ingredient.quantity*widget.sliderVal} ${ingredient.unit} ${ingredient.name}',
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${(widget.sliderVal)} servings',
              value: widget.sliderVal.toDouble(),
              onChanged: (newValue) {
              setState(() {
                widget.sliderVal = newValue.round();
              });
              },
            ),

          ],
        )
      ),
      
    );
  }
  
}