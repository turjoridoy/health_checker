import 'dart:async';
import 'dart:io';

import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_checker/styles/text_constants.dart';
import 'package:http/http.dart' as http;


import '../model/ip.dart';
import '../styles/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: MyColors.secondaryColor,
          leading: InkWell(
              onTap:() => _scaffoldKey.currentState?.openDrawer(),
              child: Icon(Icons.menu, color: MyColors.white)
          ),
          title: Text("${TConstants.title}", style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColors.white), textAlign: TextAlign.left,),
        ),
        body:  SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: MyColors.secondaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:20,right: 20),
                        child: Icon(
                          Icons.account_circle,
                          color: MyColors.white,
                          size: 80,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "MD. Mosharaf Hossain",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "+8801843118461",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Diabetes History",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.secondaryColor,
                        ),
                        child: ListTile(
                          onTap: (){
                            /*Navigator.push(context, MaterialPageRoute(builder: (context) => NearestBusMap(home)));*/
                          },
                          title: Text(
                            "Sugar Level: 9.2",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          leading: Image.asset(
                            "images/logo.png",
                            fit: BoxFit.contain,
                            height: 40,
                            width: 40,
                          ),
                          subtitle: Text(
                            "04/04/2021",
                            style: TextStyle(
                                fontSize: 12,
                              color: Colors.white
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.secondaryColor,
                        ),
                        child: ListTile(
                          onTap: (){
                            /*Navigator.push(context, MaterialPageRoute(builder: (context) => NearestBusMap(home)));*/
                          },
                          title: Text(
                            "Sugar Level: 9.2",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          leading: Image.asset(
                            "images/logo.png",
                            fit: BoxFit.contain,
                            height: 40,
                            width: 40,
                          ),
                          subtitle: Text(
                            "04/04/2021",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColors.secondaryColor,
                        ),
                        child: ListTile(
                          onTap: (){
                            /*Navigator.push(context, MaterialPageRoute(builder: (context) => NearestBusMap(home)));*/
                          },
                          title: Text(
                            "Sugar Level: 9.2",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          leading: Image.asset(
                            "images/logo.png",
                            fit: BoxFit.contain,
                            height: 40,
                            width: 40,
                          ),
                          subtitle: Text(
                            "04/04/2021",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 30,),


                    ],
                  ),
                ),
              ],
            ),

          ),
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.primaryColor,
        onPressed: (){

        },
        child: Icon(
          Icons.,
          color: MyColors.white,
          size: 30,
        ),
      )
    );
  }

}
