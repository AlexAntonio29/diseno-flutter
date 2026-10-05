import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  final Color primaryColor = Colors.blue;
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/image1.jpeg')),

          const _Title(),
          _Icons(primary: primaryColor),
          _description(description: 'Sit irure cillum nisi veniam velit dolore elit. Consectetur dolor consectetur sit nisi reprehenderit sint eu. Ullamco officia tempor aliquip elit et cillum eu culpa eu. Dolor ea amet cillum ea duis eiusmod exercitation excepteur veniam minim nulla sit. Nulla voluptate veniam mollit commodo officia irure ullamco excepteur. Duis exercitation aliqua consequat adipisicing eiusmod quis tempor qui.'),
        ],
      ),
    );
  }
}

class _description extends StatelessWidget {
  const _description({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Text(description));
  }
}

class _Icons extends StatelessWidget {
  final Color primary;
  const _Icons({super.key, required this.primary});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buttonIcon(primary: primary, title: 'CALL', icon: Icons.call),
          _buttonIcon(primary: primary, title: 'ROUTE', icon: Icons.route),
          _buttonIcon(primary: primary, title: 'SHARE', icon: Icons.share),
        ],
      ),
    );
  }
}

class _buttonIcon extends StatelessWidget {
  const _buttonIcon({
    super.key,
    required this.primary,
    required this.title,
    required this.icon,
  });

  final Color primary;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: primary, size: 25,),
        Text(title, style: TextStyle(color: primary)),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oeshinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Kandersteg, Switzerland'),
              ],
            ),
          ),

          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}
