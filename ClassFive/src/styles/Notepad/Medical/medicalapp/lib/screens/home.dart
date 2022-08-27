import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/services/color.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle,
          size: 60,
          color: primaryColor,
        ),
        backgroundColor: Colors.white, // background color of the appbar
        toolbarHeight: 80,
        shadowColor: Colors.transparent,
        title: Text(
          "Chimaobim Godswill",
          style: TextStyle(color: colorCustom, fontSize: 25),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Row(children: [
          Container(
              margin: EdgeInsets.all(13),
              color: primaryColor,
              width: size.width * 0.5,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Align(
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                  Align(
                    child: Icon(
                      Icons.circle,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: Text(
                      "Clinic Visit",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Text(
                    "Make an appointment",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              )),
          Container()
        ])
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: colorCustom,
        unselectedItemColor: Colors.black45,
        // selectedLabelStyle: TextStyle(color: Colors.blue),
        // unselectedLabelStyle: TextStyle(color: Colors.black),
        //use this one up if u want a specific typ e of style
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 1,
        iconSize: 30,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings")
        ],
      ),
    );
  }
}
