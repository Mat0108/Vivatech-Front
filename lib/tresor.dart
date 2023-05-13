import 'package:flutter/material.dart';
import 'color.dart';

class TresorPage extends StatefulWidget {
  const TresorPage({super.key, required this.title, required this.progress});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final double progress;

  @override
  State<TresorPage> createState() => _TresorPageState();
}

class _TresorPageState extends State<TresorPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(62),
                height: 45.0,
                width: 233.0,
                child: Container(
                    decoration: const BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.all(Radius.circular(90.0))),
                    child: Center(
                        child: Text(widget.title,
                            style: const TextStyle(
                                fontSize: 22, color: VivatechColor.white))))),
            Container(
                width: 277,
                height: 14,
                margin: const EdgeInsets.all(23),
                child: LinearProgressIndicator(
                  value: widget.progress,
                  minHeight: 14,
                  backgroundColor: VivatechColor.blue,
                  color: widget.progress < 0.33
                      ? VivatechColor.purple
                      : (widget.progress < 0.66
                          ? VivatechColor.pink
                          : VivatechColor.red),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
