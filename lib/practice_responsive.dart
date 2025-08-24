import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PracticeResponsive extends StatelessWidget {
  const PracticeResponsive({super.key});

  @override
  Widget build(BuildContext context) {

    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width <= 600;
    //
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Widgets'),
      ),
      body:Row(
        children: [
          if(isDesktop(context))
          Container(
            color: Colors.blue,
            width: 200,
            child: Center(child: Text('SideBar'),
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              color: Colors.yellow,
              child: Center(child: Text('Content'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
