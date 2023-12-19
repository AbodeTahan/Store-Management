import 'package:flutter/material.dart';
import 'package:untitled/Screen/Employ.dart';
import 'package:untitled/Screen/casher.dart';
import 'package:untitled/Screen/category.dart';
import 'package:untitled/Screen/product.dart';
import 'package:untitled/Screen/setting.dart';
import 'package:untitled/Screen/Report.dart';
import 'package:untitled/Widget/AlignAdmin.dart';
import 'package:untitled/Widget/searchWidget.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

List<Widget> Screen = const[
   Product(),
   Report(),
   Casher(),
   Category(),
   Employ(),
];

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 20, left: 15, right: 15, bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.32,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(80)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Setting()));
                          },
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Admin",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white54,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                        const SearchWidget(),
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.431,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
              ),
               const AlignAdmin(),
            ],
          )),
    );
  }
}
