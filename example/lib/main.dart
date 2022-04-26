import 'package:flutter/material.dart';
import 'package:adinkra_icons/adinkra_icons.dart';


void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ExampleApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adinkra Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
      ),
      home: const MyHomePage(title: 'Adinkra Icons '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IconTheme(
          data: const IconThemeData(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              AdinkraIcon(AdinkraIcons.aban,),
              AdinkraIcon(AdinkraIcons.adinkrahene, color: Colors.red,),
              AdinkraIcon(AdinkraIcons.akoben, color: Colors.blue, ),
              AdinkraIcon(AdinkraIcons.aya, color: Colors.green,),
              AdinkraIcon(AdinkraIcons.sankofaOne, color: Colors.orange,),
              AdinkraIcon(AdinkraIcons.sankofaTwo, color: Colors.purple,),
            ],
          ),
        ),
      ),
    );
  }
}
