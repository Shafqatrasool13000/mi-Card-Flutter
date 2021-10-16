import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Card App',
      home: Scaffold(backgroundColor: Colors.teal, body: CustomView()),
    );
  }
}

class CustomView extends StatefulWidget {
  @override
  _CustomViewState createState() => _CustomViewState();
}

class _CustomViewState extends State<CustomView> {
  String currentImage = 'images/profile.jpg';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              currentImage,
            ),

            //image: AssetImage(),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text(
            'Shafqat Rasool',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'Berkshire Swash',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              color: Colors.white30,
              fontSize: 25,
              fontFamily: 'Berkshire Swash',
            ),
          ),
          SizedBox(
            width: 200,
            height: 20,
            child: Divider(
              color: Colors.white30,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.green,
              ),
              title: Text('+92 3082319095'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Shafqatrasool13000@gmail.com'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
