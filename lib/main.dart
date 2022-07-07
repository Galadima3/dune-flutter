import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'Dune',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],

      body: Center(
        child: Container(
          width: 200,
          height: 200,

          decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade900,
                    offset: const Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.grey.shade800,
                    offset: const Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0)
              ]),

          child: const Icon(
            Icons.android,
            size: 80,
            color: Colors.white,
          ), // BoxShadow 00410001( color: Colors.grey[800], offset: Offset( -5.0, -5.0), blurRadius: 15.0, spreadRadius: 1.0 ), // BoxShadow
        ), // Boxbecoration
      ), // Container ), // Center ): // Scaffold
    );
  }
}
