import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent.withValues(alpha: .50),
        elevation: 8,
        shadowColor: Colors.lightBlueAccent.withValues(alpha: .35),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade100,
              Colors.blue.shade200,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 360,
              minWidth: 300,
            ),
            child: Card(
              elevation: 12,
              shadowColor: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Hey Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/morat.png',
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up, color: Colors.white),
                          label: const Text(
                            'Like',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigoAccent,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_active, color: Colors.white),
                          label: const Text(
                            'Subscribe',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

