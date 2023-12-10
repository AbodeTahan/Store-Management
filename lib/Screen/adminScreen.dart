import 'package:flutter/material.dart';
import 'package:untitled/Screen/category.dart';
import 'package:untitled/Screen/setting.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  var selectedTypeReport;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Setting()));
            },
          ),
        ],
        title: const Text(
          "AdminPage",
          style: TextStyle(
              fontSize: 20, fontFamily: 'fonts/Raleway-MediumItalic.ttf'),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Category()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          alignment: Alignment.center,
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(4, 4))
                              ]),
                          child: Text("الأصناف")),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          alignment: Alignment.center,
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(4, 4))
                              ]),
                          child: Text("التقارير")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(4, 4))
                              ]),
                          child: Text("الموظفين")),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(4, 4))
                              ]),
                          child: Text("الكاشير")),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  underline: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                  hint: Text("نوع التقرير"),
                  items: [
                    "يومي",
                    "اسبوعي",
                    "شهري",
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedTypeReport = val!;
                    });
                  },
                  value: selectedTypeReport,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "التقرير *",
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.book_outlined)
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]),
              child: TextFormField(
                textAlign: TextAlign.end,
                textInputAction: TextInputAction.next,
                maxLines: 10,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: "...أكتب التقرير هنا",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    hintStyle: const TextStyle(
                      fontSize: 12,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "حفظ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              splashColor: Colors.grey,
              color: Colors.blueGrey[200],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}