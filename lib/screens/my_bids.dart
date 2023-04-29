import 'package:abc_clone/contants/appColors.dart';
import 'package:abc_clone/screens/past_auctions.dart';
import 'package:abc_clone/screens/profile.dart';
import 'package:abc_clone/widgets/auction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/blue_button.dart';
import '../widgets/drawer.dart';

class MyBids extends StatelessWidget {
  const MyBids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      ///Appbar
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text("My Bids", style: TextStyle(color: AppColors.black),),
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) => // Ensure Scaffold is in context
        IconButton(
            icon: const Icon(Icons.menu, color: AppColors.black,),
            onPressed: () => Scaffold.of(context).openDrawer()
        )),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: AppColors.black,)),
          IconButton(onPressed: (){}, icon: SizedBox(
              height: 20,
              child: Image.asset("assets/icons/ellipsis.png", )))
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(height: height*0.3,),
            Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: width*0.2,
                    child: Image.asset("assets/icons/logo2.png")
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: width*0.9,
                        child: Container(
                          height: 1,
                          decoration: const BoxDecoration(
                            color: AppColors.grey,

                          ),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("You have no current bids", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.bold, fontSize: 18),),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Come back to see your activity", style: TextStyle(color: AppColors.grey,  fontSize: 18),),
                    ),

                    BlueButton(
                      btnText: "START BIDDING",
                      onTap: () {  },),


                  ],
                )
            ),


          ],
        ),
      ),

      drawer: const MyDrawer(),

    );
  }
}
