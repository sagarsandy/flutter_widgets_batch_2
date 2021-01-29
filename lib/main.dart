import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        elevation: 7.0,
        title: Text("App Bar"),
        flexibleSpace: Container(
          child: Text(
            "Hello world",
            style: TextStyle(fontSize: 25),
          ),
        ), // flexibleSpace is a stacked widget in appbar, this will also display some widget, along with appbar
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () => print("Leading button pressed"),
          ),
        ),
        leadingWidth: 40, // How much width should the leading widget occupy
        primary:
            true, // By default it is true, if it false, the app bar also become normal widget and starts from top.
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () => print("Add button pressed"),
          ),
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () => print("Email button pressed"),
          ),
          IconButton(
            icon: Icon(Icons.apps),
            onPressed: () => print("Apps button pressed"),
          ),
          IconButton(
            icon: Icon(Icons.apps),
            onPressed: () => print("Apps button pressed"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green[50],
        ),
      ),
    );
  }
}
