import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData icondata;
  final TextEditingController? mycontroller;
  const CustomTextFormAuth(
      {Key? key,
      required this.hinttext,
      required this.labletext,
      required this.icondata,
      this.mycontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 23),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 12),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(labletext),
            ),
            suffixIcon: Icon(icondata),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
