import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart' hide AssetManifest;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class UserProfileUI extends StatelessWidget {
  const UserProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var isMobile = screenWidth < 600;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('User Profile', 
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, size: 28),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: isMobile ? 80 : 100,
                backgroundImage: AssetImage('assets/pics.png'),
              ),
              SizedBox(height: 20),
              Text('Qaisar Abbas',
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 24 : 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              SizedBox(height: 5),
              Text('qaisarabbas5422@gmail.com',
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 14 : 16,
                    color: Colors.grey,
                  )),
              SizedBox(height: 5),
              Text('+923123456789',
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 14 : 16,
                    color: Colors.grey,
                  )),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    Icon(FontAwesomeIcons.facebook, size: 30, color: Colors.blue),
                    Icon(FontAwesomeIcons.twitter, size: 30, color: Colors.lightBlue),
                    Icon(FontAwesomeIcons.linkedin, size: 30, color: Colors.blueAccent),
                    Icon(FontAwesomeIcons.instagram, size: 30, color: Colors.pinkAccent),
                    Icon(FontAwesomeIcons.github, size: 30, color: Colors.blueGrey),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(

                onPressed: () {
                
                },
                style: ElevatedButton.styleFrom(
                  
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Edit Profile',
                    style: GoogleFonts.poppins(fontSize: 18, color: const Color.fromARGB(255, 20, 20, 20))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
