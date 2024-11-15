import 'package:flutter/material.dart';

import 'package:shoppingapp/models/categorymodel.dart';

  final categories = {
  Categorymodel.vegetables: Category(
    'Vegetables',
    Color.fromARGB(255, 0, 255, 128),
  ),
  Categorymodel.fruit: Category(
    'Fruit',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categorymodel.meat: Category(
    'Meat',
    Color.fromARGB(255, 255, 102, 0),
  ),
  Categorymodel.dairy: Category(
    'Dairy',
    Color.fromARGB(255, 0, 208, 255),
  ),
  Categorymodel.carbs: Category(
    'Carbs',
    Color.fromARGB(255, 0, 60, 255),
  ),
  Categorymodel.sweets: Category(
    'Sweets',
    Color.fromARGB(255, 255, 149, 0),
  ),
 Categorymodel.spices: Category(
    'Spices',
    Color.fromARGB(255, 255, 187, 0),
  ),
  Categorymodel.convenience: Category(
    'Convenience',
    Color.fromARGB(255, 191, 0, 255),
  ),
  Categorymodel.hygiene: Category(
    'Hygiene',
    Color.fromARGB(255, 149, 0, 255),
  ),
  Categorymodel.other: Category(
    'Other',
    Color.fromARGB(255, 0, 225, 255),
  ),
};