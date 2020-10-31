import 'package:flutter/material.dart';
import 'Persegi.dart';
import 'PersegiPanjang.dart';
import 'Segitiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text('Aplikasi Bangun Datar'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Persegi"),
                Tab(text: "Persegi Panjang"),
                Tab(text: "Segitiga")
              ]
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Persegi(),
              PersegiPanjang(),
              Segitiga()
            ],
          ),
        ),
      ), debugShowCheckedModeBanner: false,
    );
  }
}