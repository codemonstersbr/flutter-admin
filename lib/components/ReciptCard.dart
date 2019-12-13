
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiptCard extends StatelessWidget {
  final String image;

  ReceiptCard({
    @required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          // Row(
          //   children: <Widget>[
          Expanded(
            child: Image.network(
              'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f00000xsvI6EAI/5ba38e95e4b0e8a409971a79.jpg&w=710&h=462',
              fit: BoxFit.cover,
              width: 1920,
              height: 240,
            ),
          ),
          Container(
            padding: EdgeInsets.all(24),
            child:   Text(
              'Pizza',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('2 H'),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Easy'),
                )
              ],
            )
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                 ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                 ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                 ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                 ListTile(
                  title: Text('1 kg ingredient a'),
                ),
                ListTile(
                  title: Text('1 kg ingredient a'),
                ),
              ],
            )
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                child: Text('Hello'),
                onPressed: () {}
              ),
              RaisedButton(
                child: Text('Hi'),
                onPressed: () { },
              ),
            ],
          ),
          // ListView(
          //         children: <Widget>[
          //           Text(
          //             'Pizza',
          //             style: TextStyle(
          //               fontSize: 24,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          // Container(
          //   padding: EdgeInsets.all(24),
          //   child: Text(
          //     'Pizza',
          //     style: TextStyle(
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // )
              
          //   ],
          // ),
          // Row(
          //   children: <Widget>[
          //     Container(
          //       padding: EdgeInsets.all(24),
          //       child: ListView(
          //         children: <Widget>[
          //           Text(
          //             'Pizza',
          //             style: TextStyle(
          //               fontSize: 24,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        ],
      )

      // child: Row(
      //   children: <Widget>[
      //     Image.network(
      //       'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f00000xsvI6EAI/5ba38e95e4b0e8a409971a79.jpg&w=710&h=462',
      //       fit: BoxFit.cover,
      //       height: 240,
      //     ),
      //     Text(
      //       'Pizza',
      //       style: TextStyle(
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     )
      //   ],
      // )
    );
  }
}