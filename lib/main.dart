import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tradutor de Português para Libras',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFF2F2F2), // Light gray background color
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputText = '';
  String translatedText = '';

  void _translateText() {
    // Add your translation logic here.
    setState(() {
      translatedText = 'Translated text goes here.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tradutor de Português para Libras'),
        backgroundColor: Color(0xFF4A86E8), // Blue app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  inputText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Digite o texto',
                labelStyle: TextStyle(color: Color(0xFF4A86E8)), // Blue label color
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF4A86E8)), // Blue focused border color
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF979797)), // Light gray enabled border color
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _translateText,
              child: Text('Traduzir'),
              style: ElevatedButton.styleFrom(
                //Color(0xFF4A86E8), // Blue button color
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Tradução para Libras',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A86E8), // Blue header color
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  translatedText,
                  style: TextStyle(fontSize: 16, color: Color(0xFF4A86E8)), // Blue text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}