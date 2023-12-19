import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory(
      {Key? key, required this.quntity, required this.categoryName})
      : super(key: key);
  final int quntity;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.orange[500],
      ),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 2,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert))),
                  Text("$quntity"),
                ],
              ),
              Text(
                categoryName,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          )),
    );
  }
}
