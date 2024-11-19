import 'package:flutter/material.dart';
import 'package:shoppingapp/data/dummies.dart';
import 'package:shoppingapp/models/grocery_model.dart';
import 'package:shoppingapp/widgets/new_items.dart';

class Uifirstscreen extends StatefulWidget{
  Uifirstscreen({super.key});


  @override
  State<Uifirstscreen> createState() => _UifirstscreenState();}

  class _UifirstscreenState extends State<Uifirstscreen> {
  final List<GroceryItem> groceryItemss = [];


  void addnewitem(context) async {
   final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(builder: (context)=> NewItemsscreen() )
    );
    if (newItem==null){
    return;
  }
  
        setState((){groceryItemss.add(newItem);});  

  }
  
  

  @override
  Widget build(BuildContext context) {
    
    Widget content = const Center(
      child: Text(" NO DATA YET ! ", 
      style: TextStyle(
        fontSize: 20, color: Color.fromARGB(255, 202, 202, 224)
        ),
        )
        );
        
    if(groceryItemss.isNotEmpty){
      content = ListView.builder(
            itemCount: groceryItemss.length,
           itemBuilder: (context, index) => ListTile(
            
            title: Text(groceryItemss[index].name),
            
            subtitle: Text(groceryItemss[index].quantity.toString()),
            
            
            leading: Container(
              
              width: 20,
              height: 20,
              color: groceryItemss[index].category.color,
              
            ),
          

           ),
           
            
          );
    }
  
    return Scaffold(
      appBar: AppBar(title: Text("Groceries"),
      actions: [
        IconButton(icon: Icon(Icons.add),
         onPressed: (){
          addnewitem(context);
         }),
         
      ],
      ),
      body: content
          
          
          
        
        
      
    );
    
  }
  }