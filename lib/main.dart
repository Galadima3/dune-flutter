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
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? Colors.grey.shade900 : Colors.grey.shade300,
                        offset: const Offset(5.0, 5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? Colors.grey.shade800 : Colors.white,
                        offset: const Offset(-5.0, -5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0)
                  ],
                  
                  ),
              child: Icon(
                Icons.android,
                size: 80,
                color: darkMode ? Colors.white : Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  child: const Text(
                    'Dark',
                    style: TextStyle(color: Colors.white),
                  ),
                ), ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  child: const Text(
                    'Light',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
              )
          ],
        ),
      ),
    );
  }
}
