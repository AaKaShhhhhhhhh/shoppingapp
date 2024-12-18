import 'package:flutter/material.dart';

import 'package:shoppingapp/models/categorymodel.dart';

  final categories = {
  Categorymodel.vegetables: Category(
    'Vegetables',
    const Color.fromARGB(255, 0, 255, 128),
  ),
  Categorymodel.fruit: Category(
    'Fruit',
    const Color.fromARGB(255, 145, 255, 0),
  ),
  Categorymodel.meat: Category(
    'Meat',
    const Color.fromARGB(255, 255, 102, 0),
  ),
  Categorymodel.dairy: Category(
    'Dairy',
    const Color.fromARGB(255, 0, 208, 255),
  ),
  Categorymodel.carbs: Category(
    'Carbs',
    const Color.fromARGB(255, 0, 60, 255),
  ),
  Categorymodel.sweets: Category(
    'Sweets',
    const Color.fromARGB(255, 255, 149, 0),
  ),
 Categorymodel.spices: Category(
    'Spices',
    const Color.fromARGB(255, 255, 187, 0),
  ),
  Categorymodel.convenience: Category(
    'Convenience',
    const Color.fromARGB(255, 191, 0, 255),
  ),
  Categorymodel.hygiene: Category(
    'Hygiene',
    const Color.fromARGB(255, 149, 0, 255),
  ),
  Categorymodel.other: Category(
    'Other',
    const Color.fromARGB(255, 0, 225, 255),
  ),
};