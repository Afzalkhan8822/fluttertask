import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  _detailpageState createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        
         child: Padding(
           padding: const EdgeInsets.only(left: 20,),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  
                   Text(
                     "    Name",
                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                   ),
                   Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          
                           Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50)),
                           
                           RaisedButton(
                             
                             
                             onPressed: (){},
                             child: Text("Kumar"),
                             ),
                         ],
                       ),
                     ],
                   ),
                   
                   Text(
                     "Phone Number",
                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                   ),
                   Container(
                     padding: EdgeInsets.only(top: 500),
                     child: Column(
                       children: [
                         Text("afzak")
                       ],
                     ),
                   )
                 ],
               ),
             ],
           ),
        
        
         ),
         
      ),
    );
  }
}
