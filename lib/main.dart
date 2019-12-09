import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'R\$ 41,00',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.favorite, 'FAVORITE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
          _buildButtonColumn(color, Icons.shopping_basket, 'BUY'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Container(
          padding: new EdgeInsets.all(24.0),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Text('Alo'),
                    )
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('alo')
                ],
              )
            ],
          ),
          // child: Card(
          //   child: ListView(
          //     children: [
          //       Image.asset(
          //         'images/lake.jpg',
          //         width: 600,
          //         height: 240,
          //         fit: BoxFit.cover,
          //       ),
          //       titleSection,
          //       buttonSection
          //     ],
          //   ),
          // ),
        ),
        // body: ListView(
        //   children: [
        //     Image.asset(
        //       'images/lake.jpg',
        //       width: 600,
        //       height: 240,
        //       fit: BoxFit.cover,
        //     ),
        //     titleSection,
        //     buttonSection
        //   ],
        // ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}