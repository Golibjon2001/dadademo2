import 'package:dadademo2/model/user_model.dart';
import 'package:dadademo2/server/user_server.dart';
import 'package:flutter/material.dart';

import 'hom_page.dart';
class Hom_Page extends StatefulWidget {
  static const String id="hom_page2";
  const Hom_Page({Key? key}) : super(key: key);

  @override
  _Hom_PageState createState() => _Hom_PageState();
}

class _Hom_PageState extends State<Hom_Page> {
  final emilecon=TextEditingController();
  final numbercon=TextEditingController();
  final adrescon=TextEditingController();


  void doLogin(){
    String emile= emilecon.toString().trim();
    String number=numbercon.toString().trim();
    String adres= adrescon.toString().trim();
    var account=Account(number: number, emile: emile, adres: adres);
    HVdb().storAccount(account);
    var ac2=HVdb().lodAccount();
    print(ac2.emile);
    print(ac2.number);
    print(ac2.adres);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff006e62),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //#image

                  SizedBox(height: 20,),
                  Text("Welcome",style: TextStyle(color: Colors.teal,),),
                  SizedBox(height: 10,),
                  Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 30),),
                ],
              ),

            )
          ),
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
                        controller:emilecon ,
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
                      Text("Number",style: TextStyle(color: Colors.black,fontSize: 20),),
                      //#Number
                      TextField(
                        controller: numbercon,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "000-756-5475",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),

                      SizedBox(height: 30,),
                      Text("Address",style: TextStyle(color: Colors.black,fontSize: 20),),
                      //#Adres
                      TextField(
                        controller: adrescon,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Goldon tower.Sylhrt",
                          hintStyle: TextStyle(color: Colors.black),
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
                      SizedBox(height:20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account?",style: TextStyle(color: Colors.grey),),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacementNamed(context, Hompage.id);
                            },
                            child: Text("SignUp",style: TextStyle(color: Color(0xff006e62)),),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,)
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
