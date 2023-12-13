import 'package:flutter/material.dart';
// import 'package:untitled/Screen/addCategory.dart';
import 'package:untitled/Widget/customcategory.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var selectedTypeReport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 5,
        title: const Text(
          "الاصناف",
          style: TextStyle(
              fontSize: 20, fontFamily: 'fonts/Raleway-MediumItalic.ttf'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 2,
                  backgroundColor: Colors.white,
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("الغاء")),
                    TextButton(onPressed: () {}, child: const Text("حفظ")),
                  ],
                  title: const Text("إضافة صنف"),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [Text(":الكمية ")],
                      ),
                      DropdownButton(
                        underline: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                        hint: const Text("قسم الصنف"),
                        items: [
                          "نظارات",
                          "ساعات",
                          "موبايلات",
                          "نظارات",
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
                );
              });
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
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: IconButton(
                              onPressed: null, icon: Icon(Icons.sort))),
                      Text(
                        "الكمية",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
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
