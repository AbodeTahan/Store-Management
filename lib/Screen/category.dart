import 'package:flutter/material.dart';
// import 'package:untitled/Screen/casher.dart';
import 'package:untitled/Widget/customcategory.dart';

import '../Model/InfoCategory.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var selectedTypeReport;
  late String cateNames;
  late int cateQuantity;


  // void updateQuantity(int index, int quantity) {
  //   setState(() {
  //     InfoCategory[index].quantity = quantity;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.grey,
          elevation: 5,
          title: const Text(
            "الاصناف",
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            DropdownButton(
              underline: Container(
                height: 1,
                color: Colors.black,
              ),
              hint: const Text("ترتيب حسب"),
              items: [
                "الاسم",
                "الكمية",
              ]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text("$e"),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedTypeReport = val!;
                });
              },
              value: selectedTypeReport,
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {

                return AlertDialog(
                  title: const Text('Add Product'),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration:
                          const InputDecoration(labelText: 'Product Name'),
                          onChanged: (value) {
                            cateNames = value;
                          },
                        ),
                        TextField(
                          decoration: const InputDecoration(
                              labelText: 'Product Quantity'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            cateQuantity = int.tryParse(value) ?? 0;
                          },
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // if (productName != null &&
                        //     productPrice != null &&
                        //     productQuantity != null) {
                        //   addCategory(InfoProduct(
                        //       name: productName,
                        //       price: productPrice,
                        //       quantity: productQuantity));
                        // }
                        // Navigator.pop(context);
                      },
                      child: const Text('Add'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),

        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        "الكمية",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "إسم الصنف",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              const CustomCategory(quntity: 20, categoryName: "موبايلات"),
              const CustomCategory(quntity: 100, categoryName: "لابتوبات"),
              const CustomCategory(quntity: 0, categoryName: "ساعات"),
              const CustomCategory(quntity: 66, categoryName: "نظارات"),
            ],
          ),
        ),

    );
  }
}


