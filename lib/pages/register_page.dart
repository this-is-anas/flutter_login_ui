import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobly/components/my_button.dart';
import 'package:jobly/components/my_textfield.dart';
import 'package:jobly/components/square_tile.dart';
import 'package:jobly/service/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function() onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();

  void signUserUp() async {
    // Show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // Try sign in
    try {
      // check if pass and confirm pass is same
      if (passwordController.text == conformPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        //show error message
        showErrorMessage("Password Doesn't match!");
      }

      // Pop loading circle
      // ignore: use_build_context_synchronously
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // Pop loading circle
      // ignore: use_build_context_synchronously
      if (context.mounted) Navigator.pop(context);

      // Show error message
      showErrorMessage(e.code);
    }
  }

  // Show error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                // logo
                //for now lets take icon
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                //welcom back
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Let's Create An Account For You!",
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                ),
                //email textfield
                SizedBox(
                  height: 40,
                ),
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                //password textfield
                SizedBox(
                  height: 25,
                ),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                //confirm password
                SizedBox(
                  height: 25,
                ),
                MyTextField(
                  controller: conformPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: false,
                ),

                //signin button
                SizedBox(
                  height: 25,
                ),
                MyButton(
                  onTap: signUserUp,
                  text: "Sign Up",
                ),
                //continue with
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Continue With",
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      )),
                    ],
                  ),
                ),
                //google and apple or sigin buttons
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'lib/assets/images/gogle_icon.png',
                    ),
                    // SizedBox(
                    //   width: 25,
                    // ),
                    // SquareTile(
                    //   onTap: () {},
                    //   imagePath: 'lib/assets/images/apple_logo.png',
                    // )
                  ],
                ),
                //new account
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have A Account?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Now",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
