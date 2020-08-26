import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Container Test')),
//      body: MyColumn(),
//    );

    return MiCard();
  }
}

/// Test Stuff here

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('Assets/images/tree.jpg'),
          ),
          Text(
            'Mustak Yaqub',
            style: TextStyle(
              fontFamily: 'Cormorant',
              fontSize: 45,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ), //name
          Text(
            'Software Engineer',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              letterSpacing: 2,
              color: Colors.white.withOpacity(0.7),
            ),
          ), //software engineer
//          Container(
//            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//            child: Row(
//              children: [
//                Icon(
//                  Icons.phone,
//                  size: 35,
//                  color: Colors.teal.shade500,
//                ),
//                SizedBox(width: 20),
//                Text(
//                  '07945 0142687',
//                  style: TextStyle(
//                    fontFamily: 'Poppins',
//                    fontSize: 25,
//                    letterSpacing: 3,
//                    color: Colors.black.withOpacity(0.7),
//                  ),
//                ),
//              ],
//            ),
//            decoration: BoxDecoration(
//                color: Colors.white,
//                border: Border.all(
//                  color: Colors.black12,
//                  width: 2,
//                ),
//                borderRadius: BorderRadius.circular(10)),
//          ),
          SizedBox(
            height: 25,
          ),
          getCard(Icons.phone, '+44 0123 4567890'),
          getCard(Icons.email, 'mustak@email.com'),
        ],
      )),
    );
  }

  Widget getCard(IconData ic, String title) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: ListTile(
        leading: Icon(
          ic,
          color: Colors.blue.shade500,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 19,
            letterSpacing: 2,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge47 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              color: Colors.red,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellowAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white70,
                  foregroundColor: Colors.black87,
                  backgroundImage: AssetImage('Assets/images/tree.jpg'),
                ),
              ],
            ),
            Container(
              width: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        getContainer('Container 1', Colors.blue),
        getContainer('Container 2', Colors.purpleAccent),
        getContainer('Container 3', Colors.green),
      ],
    );
  }

  Widget getContainer(String text, Color color) {
    return Container(
      child: Text(text),
      color: color,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}

class MyIntrinsicWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('Short'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('A bit Longer'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('The Longest text button'),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('Assets/images/tree.jpg'),
        ),
        color: Colors.yellowAccent,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        boxShadow: const [
          BoxShadow(blurRadius: 10),
          BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(30, 30)),
        ],
      ),
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Text('Container'),
      ),
    );
  }
}

class MyContainerShapeDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
              color: Colors.red,
              width: 8.0,
            ) +
            Border.all(
              color: Colors.green,
              width: 8.0,
            ) +
            Border.all(
              color: Colors.blue,
              width: 8.0,
            ),
      ),
      child: const Text('RGB', textAlign: TextAlign.center),
    );
  }
}
