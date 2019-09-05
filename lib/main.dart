import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.white, primaryColorDark: Colors.black45),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              color: Colors.redAccent),
                        ),
                        Text('Out of Service')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              color: Colors.grey),
                        ),
                        Text('Booked')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              color: Colors.greenAccent),
                        ),
                        Text('Avaliable')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 11,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4),
                itemCount: 121,
                itemBuilder: (BuildContext context, int index) {
                  if (index % 11 == 5) {
                    return Container(
                      width: 100,
                      height: 100,
                    );
                  } else {
                    int mode = Random().nextInt(3);
                    Color color = Colors.greenAccent;
                    if (mode == 0)
                      color = Colors.greenAccent;
                    else if (mode == 1)
                      color = Colors.redAccent;
                    else if (mode == 2) color = Colors.grey;

                    return Container(
                      width: 100,
                      height: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        color: color,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
