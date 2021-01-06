import 'package:flutter/material.dart';

class OldData extends StatefulWidget {
  @override
  _OldDataState createState() => _OldDataState();
}

class _OldDataState extends State<OldData> {


  String a =
      "Dummy data: We have always heard the word ‘health’ and ‘fitness’. We use it ourselves "
      "when we say phrases like ‘health is wealth’ and ‘fitness is the key’. "
      "What does the word health really mean? It implies the idea of ‘being well’. "
      "We call a person healthy and fit when he/she function well physically as well as mentally.";

  String b =
      "Dummy data: The first thing about where fitness starts is food. We should take nutritious food. Food rich in protein, "
      "vitamins, minerals, and carbohydrates is very essential. Protein is necessary for body growth. "
      "Carbohydrates provide the required energy in performing various tasks. "
      "Vitamin and minerals help in building bones and boosting our immune system.";

  String c = "Dummy data: Routine exercise helps improve our muscle power. Exercise helps in good oxygen supply and "
      "blood flow throughout the body. "
      "Heart and lungs work efficiently. Our bones get strong and joints have the pain free movement..";



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
        title: Text('Old Data', style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notification_important_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("Welcome to Old Data",style: TextStyle(fontWeight: FontWeight.bold),)),

                  Card(child: Text(a,style: TextStyle(fontSize: 20))),
                  SizedBox(height: 10.0,),

                  Card(child: Text(b,style: TextStyle(fontSize: 20))),
                  SizedBox(height: 10.0,),

                  Card(child: Text(c,style: TextStyle(fontSize: 20),)),
                  SizedBox(height: 10.0,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
