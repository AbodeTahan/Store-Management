import 'package:flutter/material.dart';
import 'package:untitled/Screen/logIn.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingsState();
}

class _SettingsState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "الإعدادت",
            style: TextStyle(fontFamily: "Mirza", fontSize: 30, height: 8),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.grey,
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
            const Divider(
              height: 20,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9),
              child: Column(
                children: [
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
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.orange,
                          )),
                    ],
                  )
                ],
              ),
            ),
            buildAccount(context, "تغير كلمة المرور"),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.orange,
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
            const Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            const Row(
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
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LogIn()));
                },
                child: const Text("تسجيل خروج"),
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
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                          hintText: "كلمة المرور القديمة",
                          helperStyle: const TextStyle(fontSize: 3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          hintText: "كلمة المرور الجديدة",
                          helperStyle: const TextStyle(fontSize: 3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          hintText: "تأكيد كلمة المرور",
                          helperStyle: const TextStyle(fontSize: 3),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {
                        },
                        child: const Text(
                          "نسيت كلمة السر؟",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("حفظ"),
                    )
                  ],
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
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
            const Icon(
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
