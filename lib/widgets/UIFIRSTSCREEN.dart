import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shoppingapp/data/categories.dart';
import 'package:shoppingapp/data/dummies.dart';
import 'package:shoppingapp/models/categorymodel.dart';
import 'package:shoppingapp/models/grocery_model.dart';
import 'package:shoppingapp/widgets/new_items.dart';
import 'package:http/http.dart' as http;

class Uifirstscreen extends StatefulWidget{
  Uifirstscreen({super.key});


  @override
  State<Uifirstscreen> createState() => _UifirstscreenState();}

  class _UifirstscreenState extends State<Uifirstscreen> {
  List<GroceryItem> groceryItemss = [];

    @override
  void initState(){
    super.initState();
    loadItem();
  }

  void loadItem() async{
    final url = Uri.https('shopit-efce2-default-rtdb.europe-west1.firebasedatabase.app','shoppig-Items.json');
    final response = await http.get(url);
    final Map<String,dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedData = [];
    
    for(final items in listData.entries){
      final categoryy  = categories.entries.firstWhere((catItem)=> catItem.value.title == items.value['category']).value;
      loadedData.add(GroceryItem(
        id: items.key,
        name: items.value['name'],
        quantity: items.value['quantity'],
        category: categoryy,

      ));
      
    }
    setState(() {
      groceryItemss = loadedData;
    });
  }

  void addnewitem(context) async {
   final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(builder: (context)=> NewItemsscreen() )
    );
    
    if(newItem==null){
      return;
    }
    setState(() {
      groceryItemss.add(newItem);
    });
  }
  
  

  @override
  Widget build(BuildContext context) {
    
    Widget content = const Center(
      child: Text(" NO DATA YET ! ", 
      style: TextStyle(
        fontSize: 22, color: Color.fromARGB(255, 202, 202, 224)
        ),
        )
        );
        
    if(groceryItemss.isNotEmpty){
      content = ListView.builder(
            itemCount: groceryItemss.length,
           itemBuilder: (context, index) => Dismissible(
            key: Key(groceryItemss[index].id.toString()),
            onDismissed: groceryItemss.remove,
            direction : DismissDirection.endToStart,
             child: ListTile(
              
              title: Text(groceryItemss[index].name),
              
              subtitle: Text(groceryItemss[index].quantity.toString()),
              
              
              leading: Container(
                
                width: 29,
                height: 20,
                color: groceryItemss[index].category.color,
                
              ),
                       
             
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