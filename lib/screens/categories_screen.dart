import "package:flutter/material.dart";

import "package:recipeai/data/dummy_data.dart";

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipeai/provider/recipe_provider.dart';

import "package:recipeai/widgets/category_card.dart";

class CategotiesScreen extends ConsumerWidget {
  const CategotiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      children: [
        ...availableCategories.map((category) {
          return CatergoryCard(
              category: category, allRecipes: ref.watch(allFilteredRecipe));
        }).toList(),
      ],
    );
  }
}