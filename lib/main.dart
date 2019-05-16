import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(RpsApp());

class RpsApp extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'RPS GAME',
       home: new Screen1(),
       routes: <String, WidgetBuilder>{
         '/screen1': (BuildContext context) => new Screen1(),
         '/screen2': (BuildContext context) => new Screen2(),
         '/screen3': (BuildContext context) => new Screen3()
       }
     );
   }
}

class Screen1 extends StatelessWidget{ 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/screen2');
                },
                child: Text('Start'),
              ),
            )
          ],
        )
     ),
    );
  }  
}

class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'W + '
                  ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              RichText(
                text:  TextSpan(
                  text: 'D + '
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'L + '
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'Screen1');
                    },
                    child: Text('Replay'),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () => exit(0),
                child: Text('Kill Me'),
              )
            ],
          )
        ],
      )  
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() =>_Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
           Row(
             children: <Widget>[
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Text('Computer : ')
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Text('VS')
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Text('Player : ')
                     ],
                   )
                 ],
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Text('W : ')
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Text('L : ')
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Text('D : ')
                     ],
                   )
                 ],
               )
             ],
           ),
           Row(
             
           )
        ],
      )
    );
  }
}
