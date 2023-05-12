import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ACCOUNT",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                  child: Image.network(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.peakpx.com%2Fen%2Fsearch%3Fq%3Dprofile%2Bpic&psig=AOvVaw1SQf0Jnyw97ht1xhsJ9wkY&ust=1683965341266000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMCd7POp7_4CFQAAAAAdAAAAABAD")),
              title: Text(
                "Maverick Damnger",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              leading: Text(
                "Private Account",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Switch(
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
                onChanged: (bool value) {},
                value: false,
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Push Notification",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ListTile(
              leading: Text(
                "New Deals",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Switch(
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
                onChanged: (bool value) {},
                value: false,
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              leading: Text(
                "Facebook friend joins",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Switch(
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
                onChanged: (bool value) {},
                value: false,
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              leading: Text(
                "Friends likes my activity",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Switch(
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
                onChanged: (bool value) {},
                value: false,
              ),
              tileColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Get Help",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListTile(
              leading: Text("Friends likes my activity"),
              trailing: Switch(
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
                onChanged: (bool value) {},
                value: false,
              ),
              tileColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
