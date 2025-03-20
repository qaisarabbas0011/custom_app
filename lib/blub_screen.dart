import 'package:flutter/material.dart';

class BulbScreen extends StatefulWidget {
  const BulbScreen({super.key});

  @override
  _BulbScreenState createState() => _BulbScreenState();
}

class _BulbScreenState extends State<BulbScreen> {
  bool isOn = false;

  void toggleBulb() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 9, 14),
      appBar: AppBar(
        title: Text("Bulb Controller"),
        backgroundColor: const Color.fromARGB(255, 17, 139, 240),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: isOn
                    ? [
                        BoxShadow(
                          color: const Color.fromARGB(255, 237, 190, 37).withOpacity(0.6),
                          blurRadius: 80,
                          spreadRadius: 30,
                        )
                      ]
                    : [],
              ),
              child: Icon(
                isOn ? Icons.lightbulb : Icons.lightbulb_outline,
                color: isOn ? const Color.fromARGB(255, 252, 188, 70) : Colors.white,
                size: 200,
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: toggleBulb,
              child: Container(
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: isOn
                        ? [Colors.orange.shade400, Colors.yellow.shade600]
                        : [Colors.blueGrey.shade600, Colors.blueGrey.shade900],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 20,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    isOn ? "Turn Off" : "Turn On",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
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
