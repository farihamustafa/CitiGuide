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
    }
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
          height: 400,
          width: 400,
          child: Form(
              key: formkey,
              child: Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textfield(
                        controller: _emailcontroller,
                        label: "email",
                        icon: Icons.email,
                        obs: false),
                    textfield(
                        controller: _passwordcontroller,
                        label: "password",
                        icon: Icons.password,
                        obs: true),
                    materialbutton(
                        function: loginform,
                        btnText: "login",
                        btnColor: Colors.blue),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account yet"),
                          textbutton(text: "Sign up")
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
