import 'package:flutter/material.dart';
import 'package:untitled/Screen/adminScreen.dart';
import 'package:untitled/Widget/customtextform.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Sign In",
          style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              fontFamily: "Bitter-Regular"),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              Image.asset(
                "images/Online_Shop.png",
                height: 150,
              ),
              const Text(
                "Welcome Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Bitter-Regular",
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Sign In With Your Email And Password OR Continue With Social Media",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomTextFormAuth(
                hinttext: "Enter Your Email",
                labletext: "Email",
                icondata: Icons.email_outlined,
              ),
              const CustomTextFormAuth(
                hinttext: "Enter Your Password",
                labletext: "Password",
                icondata: Icons.lock_outline,
              ),
              const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const AdminScreen()));
                  },
                  textColor: Colors.black,
                  color: Colors.orange,
                  child: const Text("Log In"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t Have An Account ? "),
                  InkWell(
                      child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.orange[500], fontWeight: FontWeight.bold),
                  )),
                ],
              )
            ],
          )),
    );
  }
}
