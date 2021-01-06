import 'package:flutter/material.dart';


class RecentPlans extends StatefulWidget {
  @override
  _RecentPlansState createState() => _RecentPlansState();
}

class _RecentPlansState extends State<RecentPlans> {

  List<String> myPlans = [

    "Plan 1",
    "Plan 2",
    "Plan 3",
    "Plan 4",
    "Plan 5",
    "Plan 6",
    "Plan 7",
    "Plan 8",
    "Plan 9",
    "Plan 10",
    "Plan 11",
    "Plan 12",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              accountEmail: Text('qalbeabbas964@gmail.com'),
              accountName: Text('Qalb E Abbas'),
            ),

          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Recent Plans', style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notification_important_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text("Welcome to Recent Plans",style: TextStyle(fontWeight: FontWeight.bold),)),

            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: myPlans.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("* ${myPlans[index]}",style: TextStyle(fontSize: 20),),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
