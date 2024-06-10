import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideButton = 1;
  int rightSideButton= 1;
  void Callfun(){
    setState(() {
      rightSideButton=Random().nextInt(6)+1;
      leftSideButton=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
                child:TextButton(onPressed: () {
                  Callfun();
                  },

                    child:Image.asset('images/dice$leftSideButton.png'))),
            Expanded(
                child: TextButton(onPressed: () {  setState(() {
                  Callfun();
                });},
                    child: Image.asset('images/dice$rightSideButton.png'))),
          ]
      ),
    );
  }
}
