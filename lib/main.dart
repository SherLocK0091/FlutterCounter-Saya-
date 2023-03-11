import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Sayacodevi Efe Arda Papiroğlu 21644',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sayacodevi'),
        ),
        body: Center(
          child: Sayac(),
        ),
      ),
    );
  }
  
}

class Sayac extends StatefulWidget {
  @override
  _SayacState createState() => _SayacState();
}

class _SayacState extends State<Sayac> { //sayaç script
  int _sayac = 0;

  void _sayacArtir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) { //sayfa tasarımı için olan kısım
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Sayac:',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          '$_sayac',
          style: TextStyle(fontSize: 48),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          child: Text('Artır'),
          onPressed: _sayacArtir,
        ),
      ],
    );
  }
}