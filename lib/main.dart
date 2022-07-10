import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstApp(),
    );
  }
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  String contentText = "Content";

  myFuntionClick() {
    contentText = "click!";
    setState(() {});
    print("click!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: Colors.red,
                width: 5.0,
              ),
            ),
            child: Center(
                child: Column(
              children: [
                GestureDetector(
                  onTap: myFuntionClick,
                  child: Text(
                    contentText,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ),
                const Text("Other Text"),
                ElevatedButton(
                    onPressed: myFuntionClick, child: const Text("Click"))
              ],
            ))));
  }
}
