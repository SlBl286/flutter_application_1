import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  String name;
  int age;
  MyApp({this.name = '', this.age = -1});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _ten = '';
  int _tuoi = 0;
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      new GlobalKey<ScaffoldMessengerState>();

  final tenEditingController = TextEditingController();
  final tuoiEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fullter App',
      scaffoldMessengerKey: _scaffoldKey,
      home: Scaffold(
        appBar: AppBar(title: const Text('FlutterApp')),
        
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 50,
                right: 20,
              ),
              child: Text(
                "Khảo sát số tuổi",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[200]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 50,
                right: 20,
              ),
              child: TextField(
                controller: tenEditingController,
                onChanged: (text) {
                  this.setState(() {
                    _ten = text;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  labelText: 'Nhập tên của bạn',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
                right: 20,
              ),
              child: TextField(
                controller: tuoiEditingController,
                onChanged: (text) {
                  this.setState(() {
                    _tuoi = int.tryParse(text) ?? 0;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  labelText: 'Nhập tuổi của bạn',
                ),
              ),
            ),
            TextButton(
              child: Text("Hoàn thành"),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20), 
              ),
              onPressed: () {
                _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text('$_ten , $_tuoi'),
                    duration: Duration(seconds: 3)));
              },
            ),
          ],
        )),
      ),
    );
  }
}
