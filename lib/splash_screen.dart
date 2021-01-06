import 'package:data_app/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [

          Container(
            child: Column(

              children: [
                Container(
                  margin: EdgeInsets.only(top: 250, left: 110),
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withAlpha(60),
                        spreadRadius: 15,
                        blurRadius: 7,
                        offset: Offset(
                          0.0,
                          3.0,
                        ),// changes position of shadow
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('Data App', style: TextStyle(fontSize: 20,
                        color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 110),
                  color: Colors.red,
                  child: Text('Welcome!', style: TextStyle(color:Colors.white,fontSize: 40, fontWeight: FontWeight.bold),),

                ),

              ],
            ),
          ),




        ],
      ),
    );
  }
}
