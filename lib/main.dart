import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Hello Flutter!'),
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
        title: Text(widget.title),
      ),
      body:  Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQw3Sgtuw5PSOQmZukEaRC3b-NR3mWnoRFFmS3W9yLs1VNY0UyB&usqp=CAU',
              fit: BoxFit.fill,
            ),
        const ListTile(
          title: Text('Foto con animación Hero'),
          subtitle: Text('Aquí va el subtítulo, descripción de la card.'),
        ),
        ButtonBar(
          children: <Widget>[
            /*FlatButton(
              child: const Text('BUY TICKETS'),
              onPressed: () {/* ... */},
            ), */
            FlatButton(
              child: const Text('VER MÁS'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextScene()
                )
                );
              },
            ),
          ],
        ),
      ],
    ),
    ), 
    );
  }
}

class NextScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,

        title: Text("Details page"),

      ),
      body: Center(
        child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQw3Sgtuw5PSOQmZukEaRC3b-NR3mWnoRFFmS3W9yLs1VNY0UyB&usqp=CAU',
        fit: BoxFit.fill,
      ),
      ),
    );
  }
}