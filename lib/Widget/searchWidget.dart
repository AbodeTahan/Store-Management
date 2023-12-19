import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 5, bottom: 20),
      width: MediaQuery.of(context).size.width,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Departmen...",
            hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.5)),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
