import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_api/scaffolding.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    var b = "shree ram";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          " App",
          style: TextStyle(
            fontSize: 30,
            fontFamily:
                'Open Sans', // Using Open Sans font family for AppBar title
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      // drawer: ,

      body: Center(
        child: Container(
          child: Text(" $b",
          
        ),
        

        ),
        // backgroundColor:Colors.brown,
      ),
      drawer: Drawer(),
    );
    ;
  }
}
