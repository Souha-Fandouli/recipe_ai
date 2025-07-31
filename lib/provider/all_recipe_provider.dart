import 'package:recipeai/data/dummy_data.dart';
import 'package:recipeai/model/recipe.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allRecipeProvider = Provider<List<Recipe>>((ref) {
  return dummyRecipes;
});