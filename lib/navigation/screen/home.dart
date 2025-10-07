import 'package:childlearn/navigation/screen/second.dart';
import 'package:flutter/material.dart';

class MyNav extends StatelessWidget {
  const MyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.push(context, MaterialPageRoute(
            //     builder: (context) => SecondScreen()
            // ));
            Navigator.pushNamed(context, '/second');
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              backgroundColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)
              ),
              elevation: 6,
              shadowColor: Colors.greenAccent
          ),
          child: Text(
            "Next Screen",
            style: TextStyle(
                color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}
