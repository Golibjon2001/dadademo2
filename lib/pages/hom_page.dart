import 'package:dadademo2/model/user_model.dart';
import 'package:dadademo2/pages/hom_page2.dart';
import 'package:dadademo2/server/user_server.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Hompage extends StatefulWidget {
  static const String id="hom_page";
  const Hompage({Key? key}) : super(key: key);

  @override
  _HompageState createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  final emailcontroler=TextEditingController();
  final passwordcontroler=TextEditingController();
  void  doLogin(){
    String emile=emailcontroler.toString().trim();
    String password=passwordcontroler.toString().trim();
    var user=User(password: password, emile: emile);
    HVdb().storUser(user);
    var user2=HVdb().lodUser();
    print(user2.emile);
    print(user2.password);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0xff006e62),
     body:Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           margin: EdgeInsets.only(left: 20),
           width: double.infinity,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               //#image
               Container(
                 margin: EdgeInsets.only(top: 40),
                 height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(25),
                   image: DecorationImage(
                     image: AssetImage("assets/imagess/user_2.jpeg"),
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               Text("Welcome",style: TextStyle(color: Colors.teal,),),
               SizedBox(height: 10,),
               Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 30),),
             ],
           ),
         ),
         SizedBox(height: 25,),
         Expanded(
             child:SingleChildScrollView(
               child:Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                   color: Colors.white,
                 ),
                 child:Container(
                   width: double.infinity,
                   margin: EdgeInsets.only(left: 25,right: 25,top: 45),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Email",style: TextStyle(color: Colors.black,fontSize: 20),),
                       //#email
                       TextField(
                         controller: emailcontroler,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Urmali@gmail.com",
                           hintStyle: TextStyle(color: Colors.black),
                         ),
                       ),
                       Container(
                         height: 1,
                         color: Colors.grey,
                       ),
                       SizedBox(height: 30,),
                       Text("Password",style: TextStyle(color: Colors.black,fontSize: 20),),
                       //#password
                       TextField(
                         controller:  passwordcontroler,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Enter password",
                           hintStyle: TextStyle(color: Colors.grey),
                         ),
                       ),
                       Container(
                         height: 1,
                         color: Colors.grey,
                       ),
                       SizedBox(height: 20,),
                       Container(
                         child: Center(
                           child:Text("Forget Password",style: TextStyle(color: Colors.grey),),
                         ),
                       ),
                       SizedBox(height: 20,),
                       //#Sign In
                       Container(
                         width: double.infinity,
                         height: 40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Color(0xff006e62),
                         ),
                         child: FlatButton(
                           onPressed: (){
                             doLogin();
                           },
                           child: Text("Sign In",style: TextStyle(color: Colors.white),),
                         ),
                       ),
                       SizedBox(height: 20,),
                       Container(
                         child:Center(
                           child: Text("QR",style: TextStyle(color: Colors.grey),),
                         ) ,
                       ),
                       SizedBox(height: 30,),
                       //#icon
                       Container(
                         margin: EdgeInsets.only(left: 40,right: 40),
                         child: Row(
                           children: [
                             Expanded(
                                 child:Icon(Icons.forward,color: Colors.amber,)
                             ),
                             Expanded(
                               child:Icon(Icons.icecream,color: Colors.blue,),
                             ),
                             Expanded(
                               child:Icon(Icons.email_outlined,color: Colors.black,),
                             ),

                           ],
                         ),
                       ),
                       SizedBox(height:30,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,

                         children: [
                           Text("Dont have an account?",style: TextStyle(color: Colors.grey),),
                           GestureDetector(
                             onTap: (){
                               Navigator.pushReplacementNamed(context, Hom_Page.id);
                             },
                             child: Text("SignUp",style: TextStyle(color: Color(0xff006e62)),),
                           ),
                         ],
                       ),
                       SizedBox(height: 70,)
                     ],
                   ),
                 ),
               ),
             ),
         ),
       ],
     ),
    );
  }
}

