import 'package:flutter/material.dart';

class Screen_one extends StatefulWidget {
  @override
  _Screen_oneState createState() => _Screen_oneState();
}

class _Screen_oneState extends State<Screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          boxes(context, "Iphone12", "/iphone12.png"),
          SizedBox(height: 8),
          boxes(context, "Note 20 Ultra", "/note20.jpeg"),
          SizedBox(height: 8),
          boxes(context, "Macbook Air", "/macbook_air.jpg"),
          SizedBox(height: 8),
          boxes(context, "Macbook Pro", "/macbook_pro.jpeg"),
          SizedBox(height: 8),
          boxes(context, "Gaming PC", "/gaming_pc.jpg"),
        ]),
      ),
    );
  }
}

Widget boxes(BuildContext context, String abc, String path) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.21,
    width: MediaQuery.of(context).size.width * 0.99,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 2, // changes position of shadow
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 5),
    child: Row(
      children: [
        Container(
          height: 400,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            image: DecorationImage(
              image: AssetImage(
                'images' + path,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  abc,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Image.asset(
                      "images/yellow_star.png",
                      height: 15,
                      width: 20,
                    ),
                    Text("5.0 (23 Review)"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Text("20 Pieces"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "\$90",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("Quantity: 1"),
              ),
            ]))
      ],
    ),
  );
}

class Screentwo extends StatefulWidget {
  @override
  _ScreentwoState createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.97,
            margin: EdgeInsets.only(top: 10, left: 5),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              border: Border.all(
                color: Colors.grey[350],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Username",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 15),
                child: Text("History"),
              ),
            ],
          ),
          Column(children: [
            Items(context, "Iphone 12", "/iphone12.png"),
            Items(context, "Note 20 Ultra", "/note20.jpeg"),
            Items(context, "Macbook Air", "/macbook_air.jpg"),
            Items(context, "Macbook Pro", "/macbook_pro.jpeg"),
            Items(context, "Gaming PC", "/gaming_pc.jpg"),
            Items(context, "Backlit Keyboard", "/backlit_keyboard.jpg"),
            Items(context, "Mercedes", "/mercedes.jpeg"),
            Items(context, "Mutton", "/mutton.jpg"),
            Items(context, "Roadster", "/roadster.jpg"),
            Items(context, "Royal Field", "royal_field.jpg"),
          ])
        ],
      ),
    ));
  }
}

Widget Items(BuildContext context, String item_name, String item_pic) {
  return ListTile(
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("images/" + item_pic),
    ),
    title: Text(
      item_name,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Image.asset(
            "images/yellow_star.png",
            height: 15,
            width: 20,
          ),
          Text("5.0 (23 Review)"),
        ],
      ),
    ),
    trailing: Text("\$10"),
  );
}

class Screen_three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/user_icon.png',
                      height: 200,
                      width: 200,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 47.0, right: 54),
                          child: Text(
                            "User",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "abc@gmail.com",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 62),
                          child: Text(
                            "logout",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "ACCOUNT INFORMATION",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  List_tile_one("Full Name", "User"),
                  List_tile_two("Email", "user@gmail.com"),
                  List_tile_two("Phone","+0900-786-01"),
                  List_tile_two("Address","New York,Random Street House No.72"),
                  List_tile_two("Gender","Male"),
                  List_tile_two("Date Of Birth","October 13, 1999"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget List_tile_one(String name, String detail) {
  return ListTile(
    title: Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(detail),
    trailing: Icon(Icons.edit),
  );
}

Widget List_tile_two(String name, String detail) {
  return ListTile(
    title: Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(detail),
  );
}
