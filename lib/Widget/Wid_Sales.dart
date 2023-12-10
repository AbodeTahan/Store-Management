import 'package:flutter/material.dart';


class SalesWidget extends StatelessWidget {
  const SalesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            decoration: BoxDecoration(
                color: const Color(0xffeec407),
                borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              title: Text(
                "Season Sales",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              subtitle: Text(
                "Cashback 20%",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontFamily:
                    'fonts/Raleway-MediumItalic.ttf'),
              ),
            ),
          ),
          Positioned(
            top: -20,
            right: -20,
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  color: const Color(0xffEDCE03),
                  borderRadius: BorderRadius.circular(180)),
            ),
          )
        ],
      ),
    );
  }
}
