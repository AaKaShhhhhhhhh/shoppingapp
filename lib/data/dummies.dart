
import 'package:shoppingapp/data/categories.dart';
import 'package:shoppingapp/models/categorymodel.dart';
import 'package:shoppingapp/models/grocery_model.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categorymodel.dairy]!),
  GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categorymodel.fruit]!),
  GroceryItem(
      id: 'c',
      name: 'Beef Steak',
      quantity: 1,
      category: categories[Categorymodel.meat]!),
];