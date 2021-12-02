import 'package:flutter/material.dart';
import 'package:fluttertask/Signup_screen.dart';
import 'package:fluttertask/home_screen.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool _showPassowrd =true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
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
            
            //  color: Colors.blue,
            height: height * 0.32,
              decoration: BoxDecoration(
                
                image: DecorationImage(
                  image: AssetImage('assets/images/message2.png'),
                  fit: BoxFit.cover,
                ),
              ),
          ),
          
        ),
        Positioned(
          top: 220,
          left: 150,
          child: Column(
            children: [
              SizedBox(
                height: 20,
                width: 100,
              ),
              Text(
                "Login ",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
             
            ],
          ),
          
        ),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 350),
          child: Column(
            children: [
              TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter Email",
                              hintText: " Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.blueAccent,
                              ),
                              ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          autofocus: false,
                          obscureText: _showPassowrd,
                          decoration: InputDecoration(
                              labelText: "Enter Password",
                              hintText: " password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                                  suffixIcon: GestureDetector(
                                    onTap: _togglePasswordVisibility,
                                    child: _showPassowrd
                                    ?Icon(Icons.visibility_off)
                                    :Icon(Icons.visibility,
                                    ),

                                  ),
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.blueAccent,
                              )),
                        ),
                              Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              // padding: EdgeInsets.only(left: 10, right: 10),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder:
                                  (context) => HomeScreen()));
                                },
                                color: Color(0xFF3594DD),
                                shape: RoundedRectangleBorder(
                                    // side: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                               margin: EdgeInsets.only(top: 35),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Not a member yet?",
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  GestureDetector(
                                    child: Text(
                                      "  Click here",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {
                                       Navigator.push(context,
                                   MaterialPageRoute(builder:
                                   (context) => Signupscreen()));
                                    },
                                  ),
                                ],
                              ),
                            )
                        
            ],
          ),
        
        
        
        // Positioned(
        //   top: 150,
        //   left: 0,
        //   right: 0,
        //   child: Center(

          //   child: Container(
          //     height: height * 0.2,
          //     width: width * 0.3,
          //     child: CircleAvatar(
          //       backgroundColor: Colors.blueAccent,
          //        backgroundImage: AssetImage('assets/images/man1.png'),
              
            ]
            ),
           ),
              ]
              )
          )
      )
        )
        
            
          
      
    
      
      
      
      
    
              );
        

  }
  void _togglePasswordVisibility(){
    setState(() {
      _showPassowrd =!_showPassowrd;
    });
  }

}

