import 'package:abc_clone/contants/appColors.dart';
import 'package:abc_clone/controller/AuctionController.dart';
import 'package:abc_clone/screens/past_auctions.dart';
import 'package:abc_clone/screens/profile.dart';
import 'package:abc_clone/widgets/auction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/drawer.dart';

class UpcomingSales extends StatelessWidget {
   UpcomingSales({Key? key}) : super(key: key);

  final AuctionController  auctionController = Get.put(AuctionController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      ///Appbar
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text("Upcoming Sales", style: TextStyle(color: AppColors.black),),
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
            SizedBox(height: 20,),


            for(int i = 0; i < auctionController.auctions.length; i ++ )
              Column(
                children: [
                  Auction(
                      name: auctionController.auctions[i].name.toString(),
                      city: auctionController.auctions[i].city.toString(),
                      auctionCode: auctionController.auctions[i].auctionCode.toString(),
                      spendingLimit: auctionController.auctions[i].spendingLimit.toString(),
                      startDay: auctionController.auctions[i].startDay.toString(),
                      startDate: auctionController.auctions[i].startDate.toString(),
                      startMonth: auctionController.auctions[i].startMonth.toString(),
                      endDay: auctionController.auctions[i].endDay.toString(),
                      endDate: auctionController.auctions[i].endDate.toString(),
                      endMonth: auctionController.auctions[i].endMonth.toString(),
                      auctionIcon: auctionController.auctions[i].auctionIcon.toString(),
                      auctionBackground: auctionController.auctions[i].auctionBackground.toString(),
                      lots: auctionController.auctions[i].lots.toString(),
                      timeLeft: auctionController.auctions[i].timeLeft.toString(),
                      iconColor: auctionController.auctions[i].iconColor),
                      const SizedBox(height: 20,),
                ],
              )






          ],
        ),
      ),

      drawer: const MyDrawer(),

    );
  }
}
