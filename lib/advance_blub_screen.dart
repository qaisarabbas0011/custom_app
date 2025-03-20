import 'package:flutter/material.dart';
import 'dart:async';


import 'dart:math';

class EnhancedBulbScreen extends StatefulWidget {
  const EnhancedBulbScreen({super.key});

  @override
  _EnhancedBulbScreenState createState() => _EnhancedBulbScreenState();
}

class _EnhancedBulbScreenState extends State<EnhancedBulbScreen>
    with TickerProviderStateMixin {
  bool isOn = false;
  bool isExploded = false;
  bool showNewBulbOption = false;
  int tapCount = 0;

  late AnimationController sparkController;
  late AnimationController explosionController;
  late AnimationController glowController;

  @override
  void initState() {
    super.initState();

    sparkController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    explosionController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    glowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
  }

  void toggleBulb() {
    if (isExploded) return;

    setState(() {
      tapCount++;
      if (tapCount == 3) {
        isExploded = true;
        explosionController.forward(from: 0).whenComplete(() {
          Future.delayed(Duration(seconds: 1), () {
            setState(() {
              showNewBulbOption = true;
            });
          });
        });
      } else {
        isOn = !isOn;
        if (isOn) {
          sparkController.forward(from: 0).whenComplete(() {
            glowController.forward(from: 0);
          });
        } else {
          glowController.reverse();
        }
      }
    });

    Timer(Duration(seconds: 1), () {
      tapCount = 0;
    });
  }

  void resetBulb() {
    setState(() {
      isOn = false;
      isExploded = false;
      showNewBulbOption = false;
      tapCount = 0;
    });
  }

  @override
  void dispose() {
    sparkController.dispose();
    explosionController.dispose();
    glowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isOn ? Colors.blueGrey.shade900 : Colors.black,
      appBar: AppBar(
        title: Text('Enhanced Bulb Controller'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isExploded) ...List.generate(20, (index) {
              final random = Random();
              final dx = (random.nextDouble() * 2 - 1) * 300;
              final dy = (random.nextDouble() * 2 - 1) * 300;
              final rotation = random.nextDouble() * pi;

              return AnimatedBuilder(
                animation: explosionController,
                builder: (context, child) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..translate(dx * explosionController.value, dy * explosionController.value)
                      ..rotateZ(rotation * explosionController.value),
                    child: Icon(Icons.broken_image, size: 20, color: Colors.red),
                  );
                },
              );
            }),
            if (!isExploded)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: toggleBulb,
                    child: Icon(
                      isOn ? Icons.lightbulb : Icons.lightbulb_outline,
                      size: 150,
                      color: isOn ? Colors.yellow : Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: toggleBulb,
                    child: Text(isOn ? 'Turn Off' : 'Turn On'),
                  ),
                ],
              ),
            if (showNewBulbOption)
              Positioned(
                bottom: 20,
                child: ElevatedButton(
                  onPressed: resetBulb,
                  child: Text('New Bulb'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
