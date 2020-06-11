import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  void _restartCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de Clicks:',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold ),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40.0, color: Colors.grey)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                  color: CupertinoColors.activeBlue,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(Icons.refresh),
                  onPressed: _restartCounter,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CupertinoButton(
                  color: CupertinoColors.activeBlue,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(Icons.add),
                  onPressed: _incrementCounter,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CupertinoButton(
                  color: CupertinoColors.activeBlue,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(Icons.remove),
                  onPressed: _decrementCounter,
                )
              ],
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), */// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
