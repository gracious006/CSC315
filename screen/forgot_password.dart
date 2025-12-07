import 'package:flutter/material.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Forget Password',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assests.dapo-abideen-mqzmjt_4T1w-unsplash.jpg',
                height: 120,
              ),

              const SizedBox(height: 40),

              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  if (emailController.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Password reset email sent!',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.blue,
                        duration: Duration(seconds: 2),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Please enter your email',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text(
                    "Send Email",
                    style: TextStyle(fontSize: 18),
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
