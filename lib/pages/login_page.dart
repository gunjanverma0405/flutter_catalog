import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//Here the _ means in class name _LoginPageState that it is private
class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 220,
            ),
            const SizedBox(
              height: 15.0,
              //child: Text("Hello there"),
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(
              height: 15.0,
              //child: Text("Hello there"),
            ),
            Padding(
              //padding: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  //We can also use geture detector in place of Inkwell but inkwell gives good effect while gesture detector only
                  //make in clickable
                  InkWell(
                    onTap: (() async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }),
                    child: AnimatedContainer(
                      //Giving duration is a necessity in animated container
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      //color: Colors.deepPurpleAccent,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        //we cannot give shape and borderradius together because they are a bit contrasting
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        //When we are using decoration, we have to give color in decoration otherwise we can give in container itself
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  ),
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 35)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     //print("Hi");
                  //   },
                  //   child: const Text("Login"),
                  // ),
                ],
              ),
            ),
          ],
        ),
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
