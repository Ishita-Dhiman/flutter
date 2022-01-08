import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice_number = 2 ;
  int rightDicenumber = 3;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded( //flex is a feature to switch the size of images on the screen
            flex: 1,
            child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDice_number = Random().nextInt(6)+1;
                    rightDicenumber = Random().nextInt(6) + 1;
                  });
//setstate is used to set the state of the function
                },
                child: Image(image: AssetImage('images/dice$leftDice_number.png'),

                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDicenumber = Random().nextInt(6) + 1;
                    leftDice_number = Random().nextInt(6)+1;
                  });
                },
                child: Image(image: AssetImage('images/dice$rightDicenumber.png'),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

