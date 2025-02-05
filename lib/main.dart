import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 300.00),
              child: Center(
                child: Image.asset('assets/epila-logo.png'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 42,
              width: 145,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(1, 25, 70, 1),
                  borderRadius: BorderRadius.circular(13)),
              child: TextButton(
                onPressed: () {
                  //TODO HOME SCREEN GOES HERE
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homepage()));
                },
                child: const Text(
                  'QUEUE NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
