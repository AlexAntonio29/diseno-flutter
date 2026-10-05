import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
   
  const PageTitle({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Clasify Transaction", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            Text("Clasify this particular transaction into a category" , style: TextStyle(color: Colors.white, fontSize: 20, ))
          ],
        ),
      ),
    );
  }
}