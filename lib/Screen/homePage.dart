import 'package:flutter/material.dart';
import 'package:untitled/Widget/Wid_Sales.dart';
import 'package:untitled/Widget/wid_Post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin:  const EdgeInsets.only(top: 10),
              padding:  const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search for a Product",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[200]),
                  )),
                   const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    width: 50,
                    padding:  const EdgeInsets.symmetric(vertical: 8),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                    ),
                  )
                ],
              ),
            ),
             const SalesWidget(),
             const Post(),
             const Post(),
             const Post(),
             const Post(),
          ],
        ),
      ),
    );
  }
}

// CircleAvatar(
// child: Text("Hi"),
// radius: 15,
// ),
