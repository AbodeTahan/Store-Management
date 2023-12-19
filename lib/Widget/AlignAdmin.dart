import 'package:flutter/material.dart';

import '../Model/InfoScreen.dart';
import '../Screen/adminScreen.dart';

class AlignAdmin extends StatelessWidget {
  const AlignAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height / 1.431,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 30,
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.only(topLeft: Radius.circular(70))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  itemCount: screenNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.1),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                    Screen[index]));
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: screenColors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: screenIcons[index],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          screenNames[index],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
