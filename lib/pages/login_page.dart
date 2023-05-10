import 'package:flutter/material.dart';
import 'package:myfitness/components/my_textfeild.dart';
import 'package:myfitness/pages/signup_page.dart';
import '../components/my_button.dart';
import '../components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset(
                "lib/images/2.png",
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome back you\'ve been missed!",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 5),
            MyTextFeild(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            SizedBox(height: 10),
            MyTextFeild(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgrt Password?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              onTap: () {},
            ),
            SizedBox(
              height: 30,
            ),
            // SizedBox(
            //   height: 40,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Divider(
            //           thickness: 1,
            //           color: Colors.grey[400],
            //         ),
            //       ),
            //       Text(
            //         "Or Continue with",
            //         style: TextStyle(color: Colors.grey[700]),
            //       ),
            //       Expanded(
            //         child: Divider(
            //           thickness: 1,
            //           color: Colors.grey[400],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SquareTile(
            //         imagePath: "lib/images/google.png",
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //       SquareTile(
            //         imagePath: "lib/images/fb.png",
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 40,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account?"),
                SizedBox(
                  width: 3,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text("Create new"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
