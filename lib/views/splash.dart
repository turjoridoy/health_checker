
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_checker/styles/colors.dart';
import 'package:health_checker/views/homepage.dart';

import '../styles/text_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {


    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    });


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/logo.png",
                      height: 150,
                      // color: Colors.black,
                    ),
                    SizedBox(height: 20,),
                    Text("${TConstants.title}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: MyColors.primaryColor),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
