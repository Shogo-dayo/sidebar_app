import 'package:flutter/material.dart';
import './about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sidemenu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Sidemenu"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Raja"),
              accountEmail: Text("testmail@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:NetworkImage("http://i.pravatar.cc/300"),
              ),
            ),
            ListTile(
              title: Text("About Page"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context , MaterialPageRoute(
                    builder:(BuildContext context) => AboutPage())
                );
              },
            ),
            Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              title: Text("About Page"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context , MaterialPageRoute(
                    builder:(BuildContext context) => AboutPage())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
