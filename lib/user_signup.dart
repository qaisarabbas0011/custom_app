import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 116, 248),
        leading: const Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 65, 99, 115),
        ),
        title: const Text(
          "User Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 32, 38, 46),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 152, 152, 232),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 80,
                          backgroundColor: Color.fromARGB(255, 198, 245, 244),
                          backgroundImage: AssetImage("assets/pics.png"),
                        ),

                        const SizedBox(height: 20),

                        // User Name TextField
                        TextField(
                          decoration: InputDecoration(
                            labelText: "User Name",
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Email TextField
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Contact TextField
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Contact",
                            prefixIcon: const Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Password TextField with View/Hide Icon
                        StatefulBuilder(
                          builder: (context, setState) {
                            return TextField(
                              obscureText: !isPasswordVisible,
                              decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 30),

                        // Sign Up Button
                        ElevatedButton(
                          onPressed: () {
                            print("Sign Up Button Pressed");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              4,
                              27,
                              101,
                            ),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color.fromARGB(255, 118, 135, 220),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Already Login? TextButton
                        TextButton(
                          onPressed: () {
                            print("Login Button Pressed");
                          },
                          child: const Text(
                            "Already login? Login",
                            style: TextStyle(
                              color: Color.fromARGB(255, 88, 121, 230),
                            ),
                          ),
                        ),
                      ],
                     ),
                ),
 ),
                              ),
            ],
          ),
        ),
      ),
    );
  }
}
