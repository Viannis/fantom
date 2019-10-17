import 'package:flutter/material.dart';
import 'pageScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[300],
          title: Text(
            "IOT",
            style: TextStyle(
                fontFamily: "Garamond",
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.4, 0.7, 0.9],
                colors: [
                  Colors.blue[300],
                  Colors.blue[400],
                  Colors.blue[500],
                  Colors.blue[600]
                ],
              ),
            ),
            child: GridView.count(
              padding: EdgeInsets.all(30),
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PageScreen("Hall")));
                  },
                  child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(30))),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(25)),
                              child: Image.network(
                                
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTb7GG7MI2OcgT-TEFicRDoqCM3gYPSa5MaP3rCpT0NqlGUQ6f6",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Hall",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "OpenSans",
                                    fontSize: 15),
                              ))
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PageScreen("Bedroom")));
                  },
                  child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(30))),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(25)),
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT0WCBuUbDzIkSbJ677iGY4u8fB0j8SX-G1R6syJTg3sDf-hYhf",fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("Bedroom",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "OpenSans",
                                      fontSize: 15)))
                        ],
                      )),
                ),
              ],
            )),
      ),
    );
  }
}
