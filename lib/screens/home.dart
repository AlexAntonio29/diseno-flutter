import 'package:disenos/theme/global_themes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu selección"),
      backgroundColor: GlobalThemes().primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
           children: [
            ListTile(
              leading: const Icon(Icons.icecream),
              title: const Text("First Theme"),
              onTap: ()=>Navigator.pushNamed(context, 'basic_design'),
            ),
             ListTile(
              leading: const Icon(Icons.explore_off_rounded),
              title: const Text("second Theme"),
              onTap: ()=>Navigator.pushNamed(context, "home_screen"),
            ),
             ListTile(
              leading: const Icon(Icons.zoom_in_map_sharp),
              title: const Text("third Theme"),
              onTap: ()=>Navigator.pushNamed(context, 'scroll_design'),
            )
           ],
        ),
      ),
    );
  }
}