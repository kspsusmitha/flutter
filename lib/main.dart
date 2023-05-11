import 'package:flutter/material.dart';
import 'package:task/screentwo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView.builder",
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home: ListViewBuilder());
  }
}

class ListViewBuilder extends StatefulWidget {
  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  int _currentIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      
      body: SafeArea(
          child: Center(
        child: _pages.elementAt(_currentIndex), //New
      )),
     
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.purple),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {

    _currentIndex = index;
   
      
    });
  }
}

class listnn extends StatefulWidget {
  const listnn({super.key});

  @override
  State<listnn> createState() => _listnnState();
}

class _listnnState extends State<listnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ListView.builder")),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: List.generate(100, (index) {
              return ListTile(
                leading: CircleAvatar(backgroundColor: Colors.amber),
                title: Text('Title'),
                trailing: Icon(Icons.more_vert),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp2()),
                  );
                },
              );
            }),
          ),
        )));
  }
}
