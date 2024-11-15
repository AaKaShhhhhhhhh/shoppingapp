
import 'package:shoppingapp/models/categorymodel.dart';

class GroceryItem {

GroceryItem({ required this.category,
 required this.id,
required this.name,
required this.quantity});

  final String name;
  final String id;
  final int quantity;
  final Category category;

}