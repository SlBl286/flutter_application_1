import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Color(0x3B1F50)),
      home: MusicApp(),
    );
  }
}

class MusicApp extends StatefulWidget {
  MusicApp({Key? key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF270E43),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "Library",
                      style: TextStyle(
                          color: Color(0xFFFBF6F8),
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF3D225E),
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: TextField(
                    style: TextStyle(fontSize: 20, color: Color(0xFFD1A5E7)),
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(
                            Icons.search,
                            size: 35,
                            color: Color(0xFFD1A5E7),
                          ),
                        ),
                        hintText: "Song or artist..",
                        hintStyle:
                            TextStyle(fontSize: 20, color: Color(0xFFD1A5E7)),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Playlists",
                      style: TextStyle(
                          color: Color(0xFFFBF6F8),
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://image.freepik.com/free-vector/gradient-purple-hexagonal-background_52683-61875.jpg'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                color: Color(0xFF270E43),
                              )),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://image.freepik.com/free-vector/purple-dynamic-background_23-2148962174.jpg'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                color: Colors.redAccent,
                              )),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://image.freepik.com/free-vector/cloud-background_91008-39.jpg'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              )),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://image.freepik.com/free-photo/endless-flight-futuristic-dark-corridor-with-neon-lighting-bright-neon-circle-front_250994-2747.jpg'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "Favorite",
                      style: TextStyle(
                          color: Color(0xFFFBF6F8),
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    )),
                Card(
                  color: Color(0xFF270E43),
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF3D225E),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          MdiIcons.musicNote,
                          size: 30,
                          color: Color(0xFFFBF6F8),
                        )),
                    title: Text(
                      'Chạy Ngay đi',
                      style: TextStyle(color: Color(0xFFFBF6F8)),
                    ),
                    subtitle: Text(
                      "Sơn Tùng MT-P",
                      style: TextStyle(color: Color(0xFFD1A5E7)),
                    ),
                    trailing: Icon(
                      MdiIcons.heart,
                      size: 40,
                      color: Color(0xFF3D225E),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFF270E43),
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF3D225E),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          MdiIcons.musicNote,
                          size: 30,
                          color: Color(0xFFFBF6F8),
                        )),
                    title: Text(
                      'Chạy Ngay đi',
                      style: TextStyle(color: Color(0xFFFBF6F8)),
                    ),
                    subtitle: Text(
                      "Sơn Tùng MT-P",
                      style: TextStyle(color: Color(0xFFD1A5E7)),
                    ),
                    trailing: Icon(
                      MdiIcons.heart,
                      size: 40,
                      color: Color(0xFF3D225E),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFF270E43),
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF3D225E),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          MdiIcons.musicNote,
                          size: 30,
                          color: Color(0xFFFBF6F8),
                        )),
                    title: Text(
                      'Chạy Ngay đi',
                      style: TextStyle(color: Color(0xFFFBF6F8)),
                    ),
                    subtitle: Text(
                      "Sơn Tùng MT-P",
                      style: TextStyle(color: Color(0xFFD1A5E7)),
                    ),
                    trailing: Icon(
                      MdiIcons.heart,
                      size: 40,
                      color: Color(0xFF3D225E),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFF270E43),
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF3D225E),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          MdiIcons.musicNote,
                          size: 30,
                          color: Color(0xFFFBF6F8),
                        )),
                    title: Text(
                      'Chạy Ngay đi',
                      style: TextStyle(color: Color(0xFFFBF6F8)),
                    ),
                    subtitle: Text(
                      "Sơn Tùng MT-P",
                      style: TextStyle(color: Color(0xFFD1A5E7)),
                    ),
                    trailing: Icon(
                      MdiIcons.heart,
                      size: 40,
                      color: Color(0xFF3D225E),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFF270E43),
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF3D225E),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          MdiIcons.musicNote,
                          size: 30,
                          color: Color(0xFFFBF6F8),
                        )),
                    title: Text(
                      'Chạy Ngay đi',
                      style: TextStyle(color: Color(0xFFFBF6F8)),
                    ),
                    subtitle: Text(
                      "Sơn Tùng MT-P",
                      style: TextStyle(color: Color(0xFFD1A5E7)),
                    ),
                    trailing: Icon(
                      MdiIcons.heart,
                      size: 40,
                      color: Color(0xFF3D225E),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
