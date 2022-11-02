import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
            //child: Text("Hello there"),
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
          const SizedBox(
            height: 20.0,
            //child: Text("Hello there"),
          ),
          Padding(
            //padding: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Hi Gunjan");
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ],
      ),
      // child: Text(
      //   "Login Page",
      //   style: TextStyle(
      //     fontSize: 20,
      //     color: Colors.teal[600],
      //     fontWeight: FontWeight.bold,
      //   ),
      //   //textScaleFactor: 2.0,
      // ),
    );
  }
}
