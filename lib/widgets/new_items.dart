import 'package:flutter/material.dart';
import 'package:shoppingapp/data/categories.dart';
import 'package:shoppingapp/models/categorymodel.dart';

class NewItemsscreen extends StatefulWidget {
  const NewItemsscreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewItemsscreenState();
  }
}





class _NewItemsscreenState extends State<NewItemsscreen> {
  final formKey = GlobalKey<FormState>();
  var entername = "";
  var enteredquantitiy =1;

  void saveItem() {
  if (formKey.currentState!.validate()) {
    formKey.currentState!.save();
    print(entername);
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim().length <= 1 || value.trim().length > 50) {
                    return 'Must be between 1 and 50 characters';
                  }
                  return null;
                  
                },onSaved: (value){entername = value!;}
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text('quantity'),
                      ),
                      keyboardType: TextInputType.number,
                      initialValue: '1',
                      validator: (value) {
                        if (value == null || value.isEmpty || int.tryParse(value) == null || int.tryParse(value)! <= 0) {
                          return 'Enter a valid Positive value';
                        }
                        return null;
                      },onSaved: (value){enteredquantitiy=int.parse(value!);},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField(
                      
                      validator: (value) {
                        if (value == null) {
                          return "Choose a category";
                        }
                        return null;
                      },
                      items: categories.entries
                          .map((entry) => DropdownMenuItem(
                                value: entry.value,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      color: entry.value.color,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(entry.value.title),
                                  ],
                                ),
                              ))
                          .toList(),
                      onChanged: (value) {
                        
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: saveItem,
                    child: const Text("Add Items"),
                  ),
                  TextButton(
                    onPressed: () {
                      formKey.currentState!.reset();
                      
                    },
                    child: const Text("reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}