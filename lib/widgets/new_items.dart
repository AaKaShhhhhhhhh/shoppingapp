import 'package:flutter/material.dart';
import 'package:shoppingapp/data/categories.dart';
import 'package:shoppingapp/models/categorymodel.dart';

class NewItemsscreen extends StatefulWidget{
  const NewItemsscreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewItemsscreenState();
  }
}

class _NewItemsscreenState extends State<NewItemsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Items'),
      ),
      body: Padding(padding: 
      EdgeInsets.all(16),
     child: Form(child: 
        Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Name'),
                
              ),
              validator: (value){
                return 'demo';
              } ,
            ),
           
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Expanded(child: TextFormField(
              
              decoration: const InputDecoration(
                label: Text('quantity')
              ),
              initialValue: '1',
              validator: (value) {
                return 'wrongg';
              },
            ),),
                Expanded(child :DropdownButtonFormField(items: [ 
                  for ( final category in categories.entries)
                  DropdownMenuItem(
                    value: category.value,
                    child: Row(children: [Container(
                    width: 16,
                    height: 16,
                    color: category.value.color,
                  ),
                  const SizedBox(height: 10,),
                  Text(category.value.title)]
                    
                  ), ),
                ] , onChanged: (value){})),
                
              ],
            )
          ],
        )   
        
     ),
      ),
    
    );
  }
}