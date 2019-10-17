import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  final String title;
  PageScreen(this.title);

  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  bool isSwitched1 = true;
  bool isSwitched2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[300],
          title: Text(
            widget.title,
            style: TextStyle(
                fontFamily: "Garamond",
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
        ),
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
                      print("Print");
                    },
                    child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10.0,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Switch(
                                value: isSwitched1,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched1 = value;
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 6,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[ 
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                                    child: Icon(Icons.lightbulb_outline)
                                    //Image.network("http://www.pngmart.com/files/7/Light-Bulb-PNG-Photo.png",height:30),
                                  ),
                                  Container(
                                    
                                    child: Text("Light",style: TextStyle(
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                GestureDetector(
                    onTap: () {
                      print("Print");
                    },
                    child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10.0,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Switch(
                                value: isSwitched2,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched2 = value;
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 6,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[ 
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                                    child: Icon(Icons.ac_unit)
                                    //Image.network("https://icon-library.net/images/fan-icon-png/fan-icon-png-23.jpg",height:30),
                                  ),
                                  Container(
                                    
                                    child: Text("AC",style: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                            ),
                          )
                        ],
                      ),
                    )
                  ),
              ],
            )),
      ),
    );
  }
}
