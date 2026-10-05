
import 'package:disenos/theme/global_themes.dart';
import 'package:flutter/material.dart';

class CustomBottonNavegation extends StatelessWidget {
   
  const CustomBottonNavegation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: GlobalThemes().selected,
        backgroundColor: GlobalThemes().primary,
        unselectedItemColor: GlobalThemes().thirty,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.graphic_eq_outlined), label: "calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded), label: "calendar"),
        ]
        
        ),
    );
  }
}