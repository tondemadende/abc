import 'package:abc_clone/screens/upcoming_sales.dart';
import 'package:abc_clone/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../contants/appColors.dart';
import '../widgets/auction.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text("Profile", style: TextStyle(color: AppColors.black),),
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) => // Ensure Scaffold is in context
        IconButton(
            icon: const Icon(Icons.menu, color: AppColors.black,),
            onPressed: () => Scaffold.of(context).openDrawer()
        )),
        actions: [
          TextButton(onPressed: (){}, child: const Text("LOGOUT", style: TextStyle(color: AppColors.black),))
        ],


      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [

            ///Profile
            Container(

              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(4, 0), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Tonderai Madende", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                    child: Row(
                      children:  const [
                        Text("EMAIL :"),
                        Text("tonderaimadende3@gmail.com")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,  bottom: 12.0),
                    child: Row(
                      children:  const [
                        Text("PHONE :"),
                        Text("777085809")
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///Settings
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SETTINGS", style: TextStyle(fontWeight: FontWeight.bold),),
            ),

            ///My Account info
            Row(
              children: [
                SizedBox(
                  width: width*0.1,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.info_outline, color: AppColors.grey, size: 18,),
                  ),
                ),
                const Text("My Account Info")

              ],
            ),

            ///Divider
            Row(
              children: [
                SizedBox(width: width*0.1,),
                Container(
                  width: width*0.9,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black,

                  ),
                )
              ],
            ),

            ///Change Password
            Row(
              children: [
                SizedBox(
                  width: width*0.1,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.lock_rounded, color: AppColors.grey, size: 18,),
                  ),
                ),
                const Text("Change Password")

              ],
            ),

            ///Divider
            Row(
              children: [
                SizedBox(width: width*0.1,),
                Container(
                  width: width*0.9,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black,

                  ),
                )
              ],
            ),




          ],
        ),
      ),

      drawer: const MyDrawer(),
    );
  }
}
