import 'package:cached_network_image/cached_network_image.dart';
import 'package:cityguide/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    actions: [IconButton(onPressed: () {
      Get.defaultDialog(title: "Are you sure to logout?",             
      



      );
     
      
    }, icon: const Icon(Icons.logout))],
  );
}

CityCard({required  cityimg, required  cityname}) {
  return Card(
    child: Stack(
      children: [
        Opacity(
          opacity: 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            child: CachedNetworkImage(imageUrl: cityimg,
            height: 500,
            fit: BoxFit.cover,
            ),
          ),
         ),
        
        Positioned(
            bottom: 10,
            left: 30,
            child: Text(
              cityname,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ))
      ],
    ),
  );
}
