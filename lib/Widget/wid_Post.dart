import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.1)),
            ],
          ),
          height: 190,
          child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 9, right: 9, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 180,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                                color: Colors.yellow.withOpacity(0.2)),
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  color: Colors.black.withOpacity(0.1))
                            ]),
                        child: Image(
                          image: AssetImage("images/IPhone.png"),
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(

                        children: [
                          Row(
                            children: [
                              Text(
                                "اسم المستخدم",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffeec407),
                                child: Icon(Icons.person),
                              ),
                            ],
                          ),
                          Text("أجهزة > موبايلات",style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "  ${20000} ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " :السعر",
                            style: TextStyle(

                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "IPhone 15 pro max",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            " :حول المنتج",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "الموقع",
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            size: 14,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "2023/12/1",
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.date_range,
                            size: 14,
                          )
                        ],
                      ),

                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
