import 'package:cityguide/Pages/cityscreen.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:cityguide/Theme/color.dart';
import 'package:cityguide/components/reusable/materialbutton.dart';
import 'package:cityguide/components/reusable/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

app_Bar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text('City Guide'),
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
          onPressed: () {
            // Get.defaultDialog(
               
            //     title: "Alert!",
            //     content: Text("Do you want to Logout?"),
            //     actions: [
            //       materialButton(
            //           function: () {
            //             Get.snackbar("Logout", "Logout successfully");
            //             Get.offAll(Login());
                      
            //           },
            //           btnText: "yes",
            //           btnColor: ColorTheme.primaryColor),
            //       materialButton(
            //           function: () {
            //             Get.back();
            //           },
            //           btnText: "No",
            //           btnColor: Colors.red)
            //     ]);
            Get.defaultDialog(
                onConfirm: () => {
                      Get.snackbar("Logout", "Logout successfully"),
                      Get.to(Login())
                    },
                onCancel: () => {Get.back()},
                title: "Logout",
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.question_mark,
                      size: 40,
                    ),
                    sizedBox(),
                    Text("Are you sure to logout!"),
                  ],
                ));
          },
          icon: const Icon(Icons.logout))
    ],
  );
}
