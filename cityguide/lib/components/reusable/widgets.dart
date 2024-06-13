import 'package:cityguide/Theme/color.dart';
import 'package:flutter/material.dart';

textfield(
    {required TextEditingController controller,
    required String label,
    required IconData icon,
    required bool obs,
    Color iconColor = Colors.blue}) {
  return TextFormField(
    controller: controller,
    obscureText: obs,
    decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    validator: (value) {
      if (value!.isEmpty) {
        return "invalid $label";
      } else {
        return null;
      }
    },
  );
}

materialbutton(
    {required Function() function,
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

textbutton({required String text, required void Function() function}) {
  return TextButton(
    child: Text(text),
    onPressed: () {
      function();
    },
  );
}

sizedbox() {
  return SizedBox(
    height: 10,
  );
}

app_Bar() {
  return AppBar(
    title: const Text('City Guide'),
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
  );
}

CityCard({required String cityimg, required String cityname}) {
  return Card(
    child: Stack(
      children: [
        Opacity(
          opacity: 0.7,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            child: Image(
              height: 500,
              fit: BoxFit.cover,
              image: NetworkImage(cityimg),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: 40,
            child: Text(
              cityname,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ))
      ],
    ),
  );
}
