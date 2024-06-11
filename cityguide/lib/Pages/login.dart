import 'package:cityguide/Pages/home.dart';
import 'package:cityguide/Pages/signup.dart';
import 'package:cityguide/components/reusable/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  loginform() {
    if (formkey.currentState!.validate()) {
      print(_emailcontroller.text);
      print(_passwordcontroller.text);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    }
  }

  navigators() {
    return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Signup(),
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 550,
          width: 350,
          child: Form(
              key: formkey,
              child: Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                        color: Colors.blue,
                        child: Text("logo"),
                      ),
                      sizedbox(),
                      textfield(
                          controller: _emailcontroller,
                          label: "email",
                          icon: Icons.email,
                          obs: false),
                      sizedbox(),
                      textfield(
                          controller: _passwordcontroller,
                          label: "password",
                          icon: Icons.password,
                          obs: true),
                      sizedbox(),
                      materialbutton(
                          function: loginform,
                          btnText: "login",
                          btnColor: Colors.blue),
                      sizedbox(),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account yet"),
                            textbutton(text: "Sign up", function: navigators)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
