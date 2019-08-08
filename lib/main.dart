import 'package:flutter/material.dart';
import './screens/products_screen.dart';
import './widgets/grid_product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinema',
        theme: ThemeData.dark().copyWith(
            primaryColor: Colors.orange,
            accentColor: Colors.amber,
            buttonColor: Colors.grey,
            textTheme: TextTheme(
              title: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            )),
        initialRoute: '/',
        routes: {
          '/': (ctx) => MyHomePage(),
          ProductScreen.page: (ctx) => ProductScreen(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.more_horiz,
          size: 30,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, ProductScreen.page);
          });
        },
      ),
      appBar: AppBar(
        title: Text('Cinema Home'),
      ),
      body: Center(
        child: Text('SHOP'),
      ),
    );
  }
}
