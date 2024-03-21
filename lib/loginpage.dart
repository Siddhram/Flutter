import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key});
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  String name = "";
  bool changevalue = false;
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                'lib/assets/login_image.jpg',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 40.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hello $name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Please Login ",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
                // child: Padding(
                //   padding: const EdgeInsets.all(41.0),
                //   child: Text(
                //     "hrom",
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.orange,
                //     ),
                //   ),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            changevalue = false;
                            return "Please write something";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Usernaame ",
                          labelText: "Username ",
                          labelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            // changevalue = false;
                            return "Please write password";
                          } else if (value.length < 6) {
                            return "enter six leetars";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ElevatedButton(
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    //   style: TextButton.styleFrom(
                    //       backgroundColor: Colors.blue, minimumSize: Size(150, 50)
                    //       // iconColor: Colors.blue,
                    //       ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, "/Home");
                    //     //     print("HELLO");
                    //     // Text("HELLO");
                    //     // child:Text("HELLO"),
                    //   },
                    // ),
                    InkWell(
                      onTap: () async {
                    
                          setState(() {
                            changevalue = true;
                          });
                                                    await Future.delayed(Duration(seconds: 1));

                        if (_formkey.currentState != null &&
                            _formkey.currentState!.validate()) {
                          await Navigator.pushNamed(context, "/Home");
                          setState(() {
                            changevalue = false;
                          });
                        }
                       
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changevalue ? 50 : 150,
                        height: 50,
                        child: changevalue
                            ? Icon(
                                Icons.done,
                                color: Colors.lightGreenAccent,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                //  a: Alignment.center,
                              ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          // shape:
                          //     changevalue ? BoxShape.circle : BoxShape.rectangle,
                          borderRadius: changevalue
                              ? BorderRadius.circular(150)
                              : BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              )
              // Add SizedBox with desired height (bottom padding)
            ],
          ),
        ),
      ),
    );
  }
}
