import 'package:flutter/material.dart';
import 'package:shoppingapp/data/dummies.dart';

class Uifirstscreen extends StatelessWidget{
  Uifirstscreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          ListView.builder(
            itemCount: groceryItems.length,
           itemBuilder: (context, index) => ListTile(
            title: Text(groceryItems[index].name),
            subtitle: Text(groceryItems[index].quantity.toString()),
            leading: Container(
              width: 23,
              height: 23,
              color: groceryItems[index].category.color,
            ),

           ),
            
          )
        
        
      
    );
  }
}