import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.white
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                backgroundColor: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
                elevation: 6,
                shadowColor: Colors.indigoAccent
            ),
            child: Text(
              "Prev Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}
