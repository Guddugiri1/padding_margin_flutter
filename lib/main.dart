import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Padding Margin'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 11, left: 40),
          // padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.all(11),
            child: Padding(
              padding: EdgeInsets.all(11),
              child: Text(
                'Margin Padding',
                style: TextStyle(fontSize: 30,  color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
