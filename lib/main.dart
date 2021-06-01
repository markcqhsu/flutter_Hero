import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  void initState() {
    timeDilation = 5.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Image.asset('assets/images/image_9.png');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(24, (index) {
          // print("{$index}");
          final path = "assets/images/image_$index.png";
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return DetailScreen(path);
              }));
            },
            child: Hero(
              tag: path,//標籤要有唯一性
              child: Image.asset(path),
            ),
          );
        }),
      ),
    );
  }
}
