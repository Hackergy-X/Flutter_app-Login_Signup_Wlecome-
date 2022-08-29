import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatelessWidget{
  const Register({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [

              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text("SignUp", style: TextStyle(fontSize: 33,
                        fontFamily: "myfont",
                        color: Colors.grey[800]
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    SvgPicture.asset("assets/icons/signup.svg", width: 240,
                      height: 212,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 256,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 256,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                              size: 19,
                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    ElevatedButton(
                      onPressed: () {},

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 95, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "Signup",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account ? ", style: TextStyle(
                          color: Colors.purple,
                        )),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed("login");
                          },
                          child: Text("Login", style: TextStyle(
                            color: Colors.purple,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 279,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                          ),
                          Text("OR", style: TextStyle(color: Colors.purple[900],),),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 44),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple , width: 1 )
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.purple[700],
                            height: 15,
                          ),
                        ),
                      ),

                      SizedBox(width: 22,),

                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple , width: 1 )
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google-plus.svg",
                            color: Colors.purple[700],
                            height: 15,
                          ),
                        ),
                      ),

                      SizedBox(width: 22,),

                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.purple , width: 1 )
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: Colors.purple[700],
                            height: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                  ],
                ),
              ),

              Positioned(
                top: 0,
                left: 0,
                child: Image.asset("assets/images/main_top.png", width: 111,),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/login_bottom.png", width: 111,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}