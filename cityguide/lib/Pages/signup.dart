import 'package:cityguide/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:cityguide/components/reusable/widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  signupForm() {
    if (formKey.currentState!.validate()) {
      // Implement signup logic here
      print("Name: ${_nameController.text}");
      print("Email: ${_emailController.text}");
      print("Password: ${_passwordController.text}");
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    }
  }

  navigateToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  @override
  void dispose() {
    _nameController.dispose();

    _emailController.dispose();

    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 650,
          width: 350,
          child: Form(
            key: formKey,
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 250.0,
                      width: 300.0,
                      child: Image.asset('assets/images/logo.png',
                          fit: BoxFit.cover),
                    ),
                    SizedBox(height: 20),
                    textfield(
                        controller: _nameController,
                        label: "Name",
                        icon: Icons.person,
                        obs: false,
                        iconColor: Colors.blue),
                    SizedBox(height: 20),
                    textfield(
                        controller: _emailController,
                        label: "Email",
                        icon: Icons.email,
                        obs: false,
                        iconColor: Colors.blue),
                    SizedBox(height: 20),
                    textfield(
                        controller: _passwordController,
                        label: "Password",
                        icon: Icons.password,
                        obs: true,
                        iconColor: Colors.blue),
                    SizedBox(height: 20),
                    materialbutton(
                        function: signupForm,
                        btnText: "Sign Up",
                        btnColor: Color.fromARGB(255, 12, 122, 247)),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        textbutton(text: "Login", function: navigateToLogin),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
