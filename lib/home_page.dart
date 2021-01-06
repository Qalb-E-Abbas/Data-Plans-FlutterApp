import 'package:data_app/Data/old_data.dart';
import 'package:data_app/Data/old_plans.dart';
import 'package:data_app/Data/recent_data.dart';
import 'package:data_app/Data/recent_plans.dart';
import 'package:data_app/helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  int _currentIndex = 0;

  final allScreensDestination = [


    RecentData(),
    OldData(),
    RecentPlans(),
    OldPlans(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allScreensDestination,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.white),
          selectedIconTheme: IconThemeData(
              color: Colors.white
          ),
          backgroundColor: Colors.redAccent,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: dataHelper.map((Helper helper){
            return BottomNavigationBarItem(
                icon : Icon(helper.icon,),
                backgroundColor: Colors.white,
                title: Text(helper.title)
            );
          }).toList()


      ),
    );
  }
}
