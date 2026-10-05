import 'dart:ui';

import 'package:disenos/theme/global_themes.dart';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: SafeArea(
        child: Table(
          children: [
            TableRow(
              children: [
                _SingleCard(
                  data: "General",
                  backgroundIcon: Colors.orange,
                  icon: Icons.list_alt,
                  colorIcon: Colors.white,
                ),
                _SingleCard(
                  data: "Compose",
                  backgroundIcon: const Color.fromARGB(255, 51, 0, 255),
                  icon: Icons.list_alt,
                  colorIcon: Colors.white,
                ),
                
              
              ],
            ),
            TableRow(
              children: [
                _SingleCard(
                  data: "Worried",
                  backgroundIcon: const Color.fromARGB(255, 0, 255, 38),
                  icon: Icons.dangerous,
                  colorIcon: Colors.white,
                ),
                _SingleCard(
                  data: "Sounds",
                  backgroundIcon: const Color.fromARGB(255, 255, 0, 0),
                  icon: Icons.g_mobiledata,
                  colorIcon: Colors.white,
                ),
                
              
              ],
            ),
            TableRow(
              children: [
                _SingleCard(
                  data: "Activities",
                  backgroundIcon: const Color.fromARGB(255, 0, 208, 255),
                  icon: Icons.qr_code_2,
                  colorIcon: Colors.white,
                ),
                _SingleCard(
                  data: "Main",
                  backgroundIcon: const Color.fromARGB(255, 0, 255, 34),
                  icon: Icons.tab_unselected,
                  colorIcon: Colors.white,
                ),
                
              
              ],
            ),
            TableRow(
              children: [
                _SingleCard(
                  data: "Search",
                  backgroundIcon: const Color.fromARGB(255, 47, 0, 255),
                  icon: Icons.h_mobiledata,
                  colorIcon: Colors.white,
                ),
                _SingleCard(
                  data: "Food",
                  backgroundIcon: const Color.fromARGB(255, 255, 0, 234),
                  icon: Icons.kayaking_sharp,
                  colorIcon: Colors.white,
                ),
                
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String data;
  final Color backgroundIcon;
  final IconData icon;
  final Color colorIcon;
  const _SingleCard({
    super.key,
    required this.data,
    required this.backgroundIcon,
    required this.icon,
    required this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    final content = Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: backgroundIcon, child: Icon(icon , color: colorIcon, size: 35, ),radius: 30, ),
                Text(data, style: TextStyle(color: colorIcon , fontWeight: FontWeight.bold),),
              ],
            );


    return _BackgroundCard(column: content);
  }
}

class _BackgroundCard extends StatelessWidget {
  const _BackgroundCard({
    super.key,
    required this.column,
  });

  final Column column;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            
            
            decoration: BoxDecoration(
              color: GlobalThemes().SingleCard,
              borderRadius: BorderRadius.circular(20),
            ),
          
            child: column,
          ),
        ),
      ),
    );
  }
}
