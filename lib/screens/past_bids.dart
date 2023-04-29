import 'package:abc_clone/contants/appColors.dart';
import 'package:abc_clone/screens/past_auctions.dart';
import 'package:abc_clone/screens/profile.dart';
import 'package:abc_clone/widgets/auction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/drawer.dart';

class PastBids extends StatelessWidget {
  const PastBids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      ///Appbar
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text("Past Bids", style: TextStyle(color: AppColors.black),),
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
          children: const [
            SizedBox(height: 20,),
            Auction(name: "HRE Goods",
              city: "Harare, Zimbabwe",
              auctionCode: "HGA#345",
              spendingLimit: "Subject to Bidder Status and Deposit",
              startDay: "MON",
              startDate: "20",
              startMonth: "APR",
              endDay: "FRI",
              endDate: "25",
              endMonth: "APR",
              auctionBackground: "assets/images/couch.jpeg",
              auctionIcon: "assets/icons/home (1).png",
              lots: "234 Lots",
              timeLeft: "",
              iconColor:Colors.orange,

            ),

            SizedBox(height: 20,),


            Auction(name: "BYO Goods",
              city: "Bulawayo, Zimbabwe",
              auctionCode: "HGA#342",
              spendingLimit: "Subject to Bidder Status and Deposit",
              startDay: "MON",
              startDate: "20",
              startMonth: "APR",
              endDay: "FRI",
              endDate: "25",
              endMonth: "APR",
              auctionBackground: "assets/images/couch.jpeg",
              auctionIcon: "assets/icons/home (1).png",
              lots: "234 Lots",
              timeLeft: "",
              iconColor:Colors.orange,


            ),

          ],
        ),
      ),

      drawer: const MyDrawer(),

    );
  }
}
