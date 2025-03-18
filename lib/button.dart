import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class EnhancedButtonDemoScreen extends StatelessWidget {
  const EnhancedButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BounceInDown(
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amberAccent,
            boxShadow: [
              BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4))
            ],
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Buttons Demo Screen",
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.person),
              label: Text("Elevated Button", style: GoogleFonts.poppins(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text("Text Button", style: GoogleFonts.poppins(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye_outlined),
              color: Colors.amberAccent,
              iconSize: 30,
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.amberAccent, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Outlined Button", style: GoogleFonts.poppins(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3))
                  ],
                ),
                child: Center(
                  child: Text(
                    "Gesture Detector",
                    style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
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