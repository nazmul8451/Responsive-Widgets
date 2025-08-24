import 'package:flutter/material.dart';
import 'package:responsive_design/Widgets/categoryChips.dart';

import 'Widgets/custom_search_bar.dart';

class PracticeResponsive extends StatelessWidget {
  const PracticeResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isDesktop(BuildContext context) =>
    //     MediaQuery.of(context).size.width >= 600;
    // bool isMobile(BuildContext context) =>
    //     MediaQuery.of(context).size.width <= 600;
    // //
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    //
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Design Course',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.person,
                  color: Colors.lightBlue,
                  size: 50,
                  shadows: [Shadow()],
                ),
              ],
            ), // SizedBox(
            //   height: 10,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchBar(),
                Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Categorychips(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
