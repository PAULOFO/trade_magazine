import'package:flutter/material.dart';
import 'package:xlo_trade_magazine/screens/home/home_screen.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {

  final PageController _pageController = PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),//IMPEDE DESLIZAR A TELA
        children: <Widget>[
          HomeScreen(),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.red,),
        ],
      ),
    );
  }
}
