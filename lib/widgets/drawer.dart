import 'package:abc_clone/screens/upcoming_sales.dart';
import 'package:abc_clone/screens/watched_lots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../contants/appColors.dart';
import '../contants/drawerColorStatus.dart';
import '../screens/my_bids.dart';
import '../screens/past_auctions.dart';
import '../screens/past_bids.dart';
import '../screens/profile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width*0.6,
      child:  Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: height*0.05, left: 20, right: 20),
              child: Center(child: Image.asset("assets/icons/logo2.png",height: height*0.17)),
            ),
            const Divider(thickness: 1, color: AppColors.black,),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.01),
              child: const Text("AUCTIONS", style: TextStyle(color: AppColors.grey),),
            ),

            ///Upcoming Auction
            InkWell(
              child: Container(
                decoration:  BoxDecoration(
                    color: page =="UpcomingSales"?AppColors.grey: Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                        child: SizedBox(
                            height: 20,
                            child: Image.asset("assets/icons/hammer.png")),
                      ),
                      const Text("Upcoming Sales", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              onTap: (){
                Get.back();
                page = "UpcomingSales";
                Get.to(()=> UpcomingSales());
              },
            ),

            ///Past Auction
            InkWell(
              child: Container(
                decoration:  BoxDecoration(
                    color: page=="PastAuction"? AppColors.grey:Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                        child: SizedBox(
                            height: 20,
                            child: Image.asset("assets/icons/timer.png")),
                      ),
                      const Text("Past Auctions", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              onTap: (){
                Get.back();
                page = "PastAuction";
                Get.to(()=>const PastAuction());
              },
            ),
            const Divider(thickness: 1, color: AppColors.black,),

            ///My account Text
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.01),
              child: const Text("MY ACCOUNT", style: TextStyle(color: AppColors.grey),),
            ),

            ///Name profile
            InkWell(
              child: Container(
                decoration:  BoxDecoration(
                    color: page=="Profile"?AppColors.grey:Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                        child: SizedBox(
                            height: 20,
                            child: Image.asset("assets/icons/profile.png")),
                      ),
                      const Text("Tonderai Madende", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              onTap: (){
                Get.back();
                page = "Profile";
                Get.to(()=>const Profile());
              },
            ),


            ///Watched Lots
            InkWell(
              child: Container(
                decoration:  BoxDecoration(
                    color: page == "WatchedLots"? AppColors.grey:Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children:  [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                        child: const SizedBox(
                            height: 20,
                            child: Icon(Icons.star, color: Colors.black,)),
                      ),
                      const Text("Watched Lots", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              onTap: (){
                Get.back();
                page = "WatchedLots";
                Get.to(()=>const WatchedLots());
              },
            ),


            ///My Bids
            InkWell(
              child: Container(
                decoration:  BoxDecoration(
                    color: page =="MyBids"?AppColors.grey:Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children:  [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                        child: SizedBox(
                            height: 20,
                            child: Image.asset("assets/icons/dollar.png")),
                      ),
                      const Text("My Bids", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              onTap: (){
                Get.back();
                page = "MyBids";
                Get.to(()=>const MyBids());
              },
            ),

            ///Past Bids
            InkWell(
              child: Container(
                decoration:  BoxDecoration(
                    color: page =="PastBids"?AppColors.grey: Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children:  [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                        child: SizedBox(
                            height: 20,
                            child: Image.asset("assets/icons/clock.png")),
                      ),
                      const Text("Past Bids", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              onTap: (){
                Get.back();
                page = "PastBids";
                Get.to(()=>const PastBids());
              },
            ),

            const Divider(thickness: 1, color: AppColors.black,),

            ///About Text
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.01),
              child: const Text("ABOUT", style: TextStyle(color: AppColors.grey),),
            ),

            ///Terms and Conditions
            Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children:  [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                      child: SizedBox(
                          height: 20,
                          child: Image.asset("assets/icons/document.png")),
                    ),
                    const Text("Terms & Conditions", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),



            ///About Us
            Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children:  [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: height*0.015),
                      child: SizedBox(
                          height: 20,
                          child: Image.asset("assets/icons/aboutUs.png")),
                    ),
                    const Text("About Us", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("e05gh000", style: TextStyle(color: AppColors.grey, fontSize: 10),),
              ],
            )



          ],

        ),

      ),
    );
  }
}
