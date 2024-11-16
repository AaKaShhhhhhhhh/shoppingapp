import 'package:flutter/material.dart';
import 'package:shoppingapp/data/dummies.dart';
import 'package:shoppingapp/widgets/new_items.dart';

class Uifirstscreen extends StatelessWidget{
  Uifirstscreen({super.key});

  void addnewitem(context){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=> NewItemsscreen())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Groceries"),
      actions: [
        IconButton(icon: Icon(Icons.add),
         onPressed: (){
          addnewitem(context);
         }),
      ],
      ),
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