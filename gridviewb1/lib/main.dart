import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter GridView inside Column'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                Container(
                  child: Text("$_counter"),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  child: Text("$_counter"),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  child: Text("$_counter"),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  child: Text("$_counter"),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  child: Text("$_counter"),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  child: Text("$_counter"),
                  color: Colors.cyan,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
