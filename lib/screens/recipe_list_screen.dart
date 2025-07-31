import 'package:recipeai/model/category.dart';
import 'package:flutter/material.dart';
import 'package:recipeai/model/recipe.dart';
import 'package:recipeai/widgets/recipe_card.dart';

class RecipeListScreen extends StatelessWidget {
  final Category? categoryType;
  final List<Recipe> recipeList;

  const RecipeListScreen({
    super.key,
    required this.recipeList,
    this.categoryType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoryType != null
          ? AppBar(
              title: Text(categoryType!.title),
            )
          : null,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: recipeList.length,
        itemBuilder: (ctx, index) {
          return RecipeCard(
            recipeItem: recipeList[index],
          );
        },
      ),
    );
  }
}