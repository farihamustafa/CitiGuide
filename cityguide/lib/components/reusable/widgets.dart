import 'package:flutter/material.dart';

textfield(
    {required TextEditingController controller,
    required String label,
    required IconData icon,
    required bool obs}) {
  return TextFormField(
    controller: controller,
    obscureText: obs,
    decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    validator: (value) {
      if (value!.isEmpty) {
        return "invalid " + label;
      } else {
        null;
      }
    },
  );
}

materialbutton(
    {required void Function() function,
    required String btnText,
    required Color btnColor}) {
  return MaterialButton(
    onPressed: () {
      return function();
    },
    child: Text(btnText),
    color: btnColor,
  );
}

textbutton({required String text}) {
  return TextButton(
    child: Text(text),
    onPressed: () {
      print('Pressed');
    },
  );
}
