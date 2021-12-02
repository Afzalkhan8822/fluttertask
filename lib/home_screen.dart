import 'package:flutter/material.dart';
import 'package:fluttertask/login_screen.dart';
import 'package:fluttertask/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00B0FF),
          title: Text(
            "Home Page",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Loginscreen()));
            },
            icon: Icon(
              
              Icons.arrow_back_ios,
              color: Colors.white,
              // size: 30,
            ),
          ),
          actions: [
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profilescreen()));
                },
                color: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    35,
                  ),
                  // borderSide: BorderSide.none,
                ),
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        body: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [(new Color(0xFF00B0FF)), new Color(0xFF00B0FF)],
                begin: Alignment.topLeft,
                end: Alignment.centerLeft,
              ),
            ),
            child: Column(children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36, vertical: 24.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Search here...",
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    35,
                                  ),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
        
                        // Text(
        
                        //   "Home Page",
                        //   style: TextStyle(
                        //       fontSize: 25,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.bold),
                        // ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                    ),
                    
                    child: SingleChildScrollView(
                      child: Column(
                        
                        children: [
                          
                          Container(
                            child: ClipRRect(
                              
                              borderRadius: BorderRadius.circular(20),
                              child:Image.asset("assets/images/plane2.png"),
                            ),
                            margin: EdgeInsets.only(left: 20,right: 20,top: 35),
                          ),
                          Container(
                            child: ClipRRect(
                              
                              
                              borderRadius: BorderRadius.circular(20),
                              
                              child:Image.asset("assets/images/plane2.png",
                              fit:BoxFit.cover,),
                              
                              
                              
                              
                            
                            
                              
                            ),
                            
                            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                            
                          ),
                          
                          
                          
                        ],
                      ),
                    ),
                    
                  ),
                  
                  
                
                
                  )
            ]
            ),
            ),
            );
  }
  
}
