import 'package:flutter/material.dart';
import 'components/color.dart';

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
  String text1 = "Lors du dernier voyage du captaine X,";
  String text2 = "il transportait sur son navire son trésor.";
  String text3 = "Serai tu capables de le retrouver ?";
  String text4 = "Commencer la chasse au trésor";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fond.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(60, 60, 60, 0),
                height: 45.0,
                width: 233.0,
                child: Container(
                    decoration: const BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: Center(
                        child: Text(widget.title,
                            style: const TextStyle(
                                fontSize: 22, color: VivatechColor.white))))),
            Container(
                width: 277,
                height: 14,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Stack(children: <Widget>[
                  ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
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
                  Align(
                      alignment: Alignment.lerp(
                          Alignment.topLeft,
                          Alignment.topRight,
                          widget.progress) as AlignmentGeometry,
                      child: Container(
                          height: 14.0,
                          width: 40.0,
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: VivatechColor.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90))),
                              child: Center(
                                  child: Text("${widget.progress * 100} %",
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: VivatechColor.black)))))),
                ])),
            Container(
                width: 360,
                height: 120,
                margin: const EdgeInsets.fromLTRB(0, 140, 0, 0),
                child: Column(children: [
                  Text(text1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, color: VivatechColor.white)),
                  Text(text2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, color: VivatechColor.white)),
                  Text(text3,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, color: VivatechColor.white)),
                ])),
            Container(
              width: 240,
              height: 70,
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              decoration: const BoxDecoration(
                  color: VivatechColor.blue,
                  borderRadius: BorderRadius.all(Radius.circular(90))),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TresorEtape1(
                              title: 'Chasse au trésor', progress: 0.2)),
                    );
                  },
                  child: Text(text4,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, color: VivatechColor.white))),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}

class TresorEtape1 extends StatefulWidget {
  const TresorEtape1({super.key, required this.title, required this.progress});

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
  State<TresorEtape1> createState() => _TresorEtape1State();
}

class _TresorEtape1State extends State<TresorEtape1> {
  String text1 = "Lors du dernier voyage du captaine X,";
  String text2 = "il transportait sur son navire son trésor.";
  String text3 = "Serai tu capables de le retrouver ?";
  String text4 = "Commencer la chasse au trésor";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fond.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(60, 60, 60, 0),
                height: 45.0,
                width: 233.0,
                child: Container(
                    decoration: const BoxDecoration(
                        color: VivatechColor.blue,
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: Center(
                        child: Text(widget.title,
                            style: const TextStyle(
                                fontSize: 22, color: VivatechColor.white))))),
            Container(
                width: 277,
                height: 14,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Stack(children: <Widget>[
                  ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      child: LinearProgressIndicator(
                        value: widget.progress,
                        minHeight: 14,
                        semanticsLabel: "test",
                        backgroundColor: VivatechColor.blue,
                        color: widget.progress < 0.33
                            ? VivatechColor.purple
                            : (widget.progress < 0.66
                                ? VivatechColor.pink
                                : VivatechColor.red),
                      )),
                  Align(
                      alignment: Alignment.lerp(
                          Alignment.topLeft,
                          Alignment.topRight,
                          widget.progress) as AlignmentGeometry,
                      child: Container(
                          height: 14.0,
                          width: 40.0,
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: VivatechColor.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90))),
                              child: Center(
                                  child: Text("${widget.progress * 100} %",
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: VivatechColor.black)))))),
                ])),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
