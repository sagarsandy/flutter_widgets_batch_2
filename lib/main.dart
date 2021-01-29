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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  static const List<Widget> _pageWidgets = <Widget>[
    Text(
      'Home Widget',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'Info Widget',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'Menu Widget',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  void _onTabItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.purple[50],
        enableDrag: true,
        builder: (ctx) {
          return new Container(
            height: 150.0,
            color: Color(0xFF737373),
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                child: new Center(
                  child: new Text("This is a modal sheet"),
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        elevation: 7.0,
        title: Text("App Bar"),
        flexibleSpace: Container(
          child: Text(
            "Hello world",
            style: TextStyle(fontSize: 65),
          ),
        ), // flexibleSpace is a stacked widget in appbar, this will also display some widget, along with appbar
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              scaffoldKey.currentState.showBottomSheet((context) => Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("Loading")),
                    color: Colors.cyan[50],
                  ));
            },
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
            onPressed: () => displayBottomSheet(context),
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   height: 50,
      //   color: Colors.orange,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        backgroundColor: Colors.cyan,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
        selectedItemColor: Colors.orangeAccent,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onTabItemTapped(index);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 3200,
                color: Colors.green[50],
                child: _pageWidgets.elementAt(_selectedIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
