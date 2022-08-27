import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle,size:40,),
        title: const Text("Mosco Trading app", style: TextStyle(fontSize: 15),),
        centerTitle: true,//For making the title to be at the center
        actions: const[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
            child: Icon(Icons.wifi,size:30,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
            child: Icon(Icons.search,size:30,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
            child: Icon(Icons.more_vert,size:30,),
          )
        ],
    ),
    body: SizedBox(
        child: TextField(
          decoration: InputDecoration(icon: Icon(Icons.messenger), focusColor: Colors.blue),
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text(
                      'You typed "$value", which has length ${value.characters.length}.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black45,
      // selectedLabelStyle: TextStyle(color: Colors.blue),
      // unselectedLabelStyle: TextStyle(color: Colors.black),
      //use this one up if u want a specific typ e of style
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call"),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "chat"),
        BottomNavigationBarItem(icon: Icon(Icons.camera),label: "camera"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings")
      ],
    ),
    );
  }
}