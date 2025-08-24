import 'package:flutter/material.dart';

class Categorychips extends StatefulWidget {
  const Categorychips({super.key});

  @override
  State<Categorychips> createState() => _CategorychipsState();
}

class _CategorychipsState extends State<Categorychips> {
  int selectedIndex = 0;
  final List <String> categories = [
    "UI/UX",
    "Coding",
    "Basic UI",
    "Backend",
    "Database",
    "Flutter",
    "React",
    "AI/ML",
    "Cyber Security"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categories.length, (index) {
            bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState((){
                    selectedIndex = index;
                  }
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected? Colors.lightBlue: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.lightBlue),
                  ),
                  child: Text(categories[index],
                  style: TextStyle(
                    color: isSelected? Colors.white : Colors.lightBlue,
                  ),
                  ),
                ),
              );
            })
        ),
      ),
    );
  }
}
