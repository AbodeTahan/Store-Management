import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingsState();
}

class _SettingsState extends State<Setting> {
  // late bool val1 = false;
  // late bool val2 = true;
  // late bool val3 = false;

  // onChangeFunction1(bool newvalue1) {
  //   setState(() {
  //     val1 = newvalue1;
  //   });
  // }
  //
  // onChangeFunction2(bool newvalue2) {
  //   setState(() {
  //     val2 = newvalue2;
  //   });
  // }
  //
  // onChangeFunction3(bool newvalue3) {
  //   setState(() {
  //     val3 = newvalue3;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "الإعدادت",
            style: TextStyle(fontFamily: "Mirza", fontSize: 30, height: 8),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "الحساب",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 9),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "تسجيل دخول",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600]),
                      ),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          onPressed: () {

                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "تغير معلومات الحساب",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600]),
                      ),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          onPressed: () {

                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          )),
                    ],
                  )
                ],
              ),
            ),
            buildAccount(context, "تغير كلمة المرور"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "إعدادات أخرى",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "سياسة التطبيق",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "هل تواجه مشكلة",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "تواصل مع المطور",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Text("تسجيل خروج"),
              ),
            ),

          ],
        ),
      ),
    );
  }

  ///////////   Settings   //////////////

  ///////////   النافذة المنبثقة   //////////////
  GestureDetector buildAccount(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: "كلمة المرور القديمة",
                          helperStyle: TextStyle(fontSize: 3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: "كلمة المرور الجديدة",
                          helperStyle: TextStyle(fontSize: 3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: "تأكيد كلمة المرور",
                          helperStyle: TextStyle(fontSize: 3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {
                        },
                        child: Text(
                          "نسيت كلمة السر؟",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("حفظ"),
                    )
                  ],
                ),
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  ///////////   (value) الوضع الداكن  //////////////
  //
  // Padding buildSetting(String title, bool value, Function onChange) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           title,
  //           style: TextStyle(
  //               fontSize: 20,
  //               fontWeight: FontWeight.w500,
  //               color: Colors.grey[600]),
  //         ),
  //         // Transform.scale(
  //         //   scale: 0.9,
  //         //   child: Switch(
  //         //     activeColor: Colors.blue,
  //         //     value: value,
  //         //     // trackColor: Colors.grey,
  //         //     onChanged: (bool newvalue) {
  //         //       onChange(newvalue);
  //         //       ThemeService().changeTheme();
  //         //     },
  //         //   ),
  //         // ),
  //       ],
  //     ),
  //   );
  // }
}
