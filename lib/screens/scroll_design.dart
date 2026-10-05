import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 45,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,0.5
          ],
          colors:[
            const Color.fromARGB(255, 112, 239, 197),
            const Color.fromARGB(255, 30, 196, 214)
                      ]
          
          )
      ),
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            page1(textStyle: textStyle),
           
            page2(),
          ],
        ),
      ),
    );
  }
}

class page2 extends StatelessWidget {
  
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      color:const Color.fromARGB(255, 30, 196, 214),
          
        child:   Center(
          child: TextButton(
            
            onPressed: (){},
          style: TextButton.styleFrom( backgroundColor: Colors.blue), 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text("Bienvenido", 
                      style: TextStyle(color: Colors.white ,fontSize:25),),
            )
          
          ),
        )
        
    );
  }
}

class page1 extends StatelessWidget {
  const page1({super.key, required this.textStyle});

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        _body(textStyle: textStyle),
      ],
    );
  }
}

class _body extends StatelessWidget {
  const _body({super.key, required this.textStyle});

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('13°', style: textStyle),
          Text('Miercoles', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 65),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      color: const Color.fromARGB(255, 46, 194, 211),
      child: Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}
