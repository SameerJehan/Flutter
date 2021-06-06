import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight, 
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue, 
                Colors.yellow,
              ] 
            )
          ),
          child: Column(
            children: [
              SizedBox(height: 80,), 
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("Hello", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white, 
                  fontSize: 15),
                ),
              ), 
              SizedBox(height: 10,), 
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("Login to continue", 
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold, 
                  ),
                ),
              ),
              SizedBox(height: 40 ,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text("Username",
                    style: TextStyle(fontWeight: FontWeight.bold), 
                    
                    ),
                  ),
              Container(
                width: 235,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'username',
                      hintStyle: TextStyle(fontSize: 10),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Password", 
                style: TextStyle(fontWeight: FontWeight.bold),
                 
                ),
              ),
              Container(
                width: 235,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: TextStyle(fontSize: 10),
                    )
                  ),
                ),
              ),
               ]
              ),
              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
    ),
  ),
),
              
            ],
          ),
        ),
      ),
    );
  }
}