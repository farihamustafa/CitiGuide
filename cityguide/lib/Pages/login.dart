import 'package:cityguide/Pages/cityscreen.dart';
import 'package:cityguide/Pages/signup.dart';
import 'package:cityguide/components/reusable/materialbutton.dart';
import 'package:cityguide/components/reusable/sizedbox.dart';
import 'package:cityguide/components/reusable/textbutton.dart';
import 'package:cityguide/components/reusable/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      Get.to(() => CityScreen());
    }
  }

  navigators() {
    Get.to(() => Signup());
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 570,
          width: 350,
          child: Column(children: [
            Container(
              height: 200.0,
              width: 250.0,
              child: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            ),
           
            // https://www.vectorstock.com/royalty-free-vector/amusement-park-landscape-silhouettes-background-vector-14866062
            // https://www.vectorstock.com/royalty-free-vector/scenery-amusement-park-style-background-vector-14866113
            sizedBox(),
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textField(
                        controller: _emailcontroller,
                        label: "Email",
                        icon: Icons.email,
                        obs: false),
                    sizedBox(),
                    textField(
                        controller: _passwordcontroller,
                        label: "Password",
                        icon: Icons.password,
                        obs: true),
                    sizedBox(),
                    ElevatedButton(
                      onPressed: loginform,
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.blue,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 100.0,
                        ),
                      ),
                      child: const Text('Login',style: TextStyle(
                        
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    ),
                    // materialButton(
                    //     function: loginform,
                    //     btnText: "Login",
                    //     btnColor: Colors.blue),
                    sizedBox(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          textButton(text: "Sign up", function: navigators)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
