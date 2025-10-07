import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }
  void _decrement(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Counter App",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You Current Count...",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.lightBlueAccent
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Text(
                "${_counter}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  color: Colors.greenAccent
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _decrement,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 6,
                      shadowColor: Colors.redAccent
                    ),
                  child: Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                    onPressed: _increment,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                      backgroundColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                        elevation: 6,
                        shadowColor: Colors.tealAccent
                    ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
