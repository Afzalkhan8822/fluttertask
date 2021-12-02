import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertask/detal_screen.dart';  
import 'package:fluttertask/home_screen.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  _ProfilescreenState createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              // size: 30,
            ),
          ),
          actions: [
            Container(
              // height: 50,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>detailscreen()));
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
          body: SingleChildScrollView(
            child: Container(
             
                child: Stack(children: [
              Container(
            height: height,
              ),
              ShapeOfView(
            shape: ArcShape(
              direction: ArcDirection.Outside,
              height: 45,
              position: ArcPosition.Bottom,
            ),
            child: Container(
                color: Colors.blue,
              height: height * 0.32,
                // decoration: BoxDecoration(
                  
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/message2.png'),
                //     fit: BoxFit.cover,
                //   ),
                // ),
            ),
            
              ),
              Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Center(
              
              child: Container(
                height: height * 0.2,
                width: width * 0.3,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                   backgroundImage: AssetImage('assets/images/man1.png'),
                ),
              )
            )
              ),
            
              
              
              
              Container(
            padding: EdgeInsets.only(left: 25, right: 25, top: 300),
            child: Column(
              children: [
                
                          SizedBox(
                            height: 20,
                          ),
                          
                                Container(
                            margin: EdgeInsets.only(
                                right: 280),
                            
                            child: GestureDetector(
                              onTap: () {
                               
                              },
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 0, right: 180,),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 40,
                                  onPressed: () {
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder:
                                    // (context) => HomeScreen()));
                                  },
                                  color: Colors.grey[350],
                                  shape: RoundedRectangleBorder(
                                      // side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("Paul",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                
                                 margin: EdgeInsets.only(left: 25, right: 25, ),
                                child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "",
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      child: Text(
                                        "Phone Number",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () {
                                    //      Navigator.push(context,
                                    //  MaterialPageRoute(builder:
                                    //  (context) => Signupscreen()));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 180, ),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 40,
                                  onPressed: () {
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder:
                                    // (context) => HomeScreen()));
                                  },
                                  color: Colors.grey[350],
                                  shape: RoundedRectangleBorder(
                                      // side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("+915473268753",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                right: 280),
                                child: Text(
                                          "Email",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 10,left: 10, ),
                                  child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 40,
                                  onPressed: () {
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder:
                                    // (context) => HomeScreen()));
                                  },
                                  color: Colors.grey[350],
                                  shape: RoundedRectangleBorder(
                                      // side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("paul12@gmail.com",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                   ),

                                  ),
                                  SizedBox(height: 20,),
                                    Container(
                                margin: EdgeInsets.only(
                                left: 180),
                                child: Text(
                                          "Interest",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 180, ),
                                  child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 40,
                                  onPressed: () {
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder:
                                    // (context) => HomeScreen()));
                                  },
                                  color: Colors.grey[350],
                                  shape: RoundedRectangleBorder(
                                      // side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("Football",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                   ),

                                  ),
                                   SizedBox(height: 20,),
                                    Container(
                                margin: EdgeInsets.only(
                                right: 280),
                                child: Text(
                                          "Location",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10,right: 10 ),
                                  child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 40,
                                  onPressed: () {
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder:
                                    // (context) => HomeScreen()));
                                  },
                                  color: Colors.grey[350],
                                  shape: RoundedRectangleBorder(
                                      // side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("New York City",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                   ),

                                  ),
                                 
                                
                                  

                                ],

                              )
                                
                                  

                                ],

                              )

                                ],

                              )
                             
                              
                            ]
                          )
                              
                          
              ],
            ),
              
              
              
              
              
                
              ]
              ),
             ),
                ]
                )
            ),
          )
          
              
            
        
      
        
        
        
        
      
                );
    
        

  }
  

}

