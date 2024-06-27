import 'package:cityguide/Pages/profile_page.dart';
import 'package:cityguide/Pages/tourist_details.dart';
import 'package:cityguide/Theme/color.dart';
import 'package:cityguide/components/reusable/appbar.dart';
import 'package:cityguide/components/reusable/citycard.dart';
import 'package:cityguide/models/citymodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityScreen extends StatelessWidget {
  List cityList = [
    citymodel(
        cimg:
            "https://images.pexels.com/photos/532826/pexels-photo-532826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Paris"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/2845013/pexels-photo-2845013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Sydney"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/290386/pexels-photo-290386.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "New York"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/1583339/pexels-photo-1583339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Agra"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/2845013/pexels-photo-2845013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Paris"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/2845013/pexels-photo-2845013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Paris"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/2845013/pexels-photo-2845013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Paris"),
    citymodel(
        cimg:
            "https://images.pexels.com/photos/2845013/pexels-photo-2845013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        cname: "Paris"),
  ];
  CityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      appBar: app_Bar('Cities'),
      body: 
      Container(
        decoration: BoxDecoration(gradient:LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
         Color.fromARGB(255, 5, 6, 58),
           Color.fromARGB(255, 5, 6, 39),
       ]), ),
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // borderSide: BorderSide(width: 0.8),
                  ),
                  hintText: 'Search Cities and Places',
                  fillColor: Colors.white,
                  filled: true,         
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear,color: Colors.black,),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => Get.to(TouristDetailsPage(image: "https://images.pexels.com/photos/2845013/pexels-photo-2845013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                child: GridView.builder(
                  itemCount: cityList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CityCard(
                          cityimg: cityList[index].cimg,
                          cityname: cityList[index].cname),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => Get.to(const ProfileSettingsPage()),
          elevation: 30,
          selectedItemColor: ColorTheme.primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              label: 'Places',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            
            )
          ]),
    );
  }
}
