import 'package:flutter/material.dart';
import 'package:abc_clone/contants/appColors.dart';

class Auction extends StatelessWidget {
  const Auction(  {Key? key,  required this.name,
    required this.city,
    required this.auctionCode,
    required this.spendingLimit,
    required this.startDay,
    required this.startDate,
    required this.startMonth,
    required this.endDay,
    required this.endDate,
    required this.endMonth,
    required this.auctionIcon,
    required this.auctionBackground,
    required this.lots,
    required this.timeLeft,
    required this.iconColor,

  }) : super(key: key);

  final String name;
  final String city;
  final String auctionCode;
  final String spendingLimit;
  final String startDay;
  final String startDate;
  final String startMonth;
  final String endDay;
  final String endDate;
  final String endMonth;
  final String auctionIcon;
  final String auctionBackground;
  final String lots;
  final String timeLeft;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 0.5)
      ),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: width,
                    child: Image.asset(auctionBackground,height: height*0.3,  width: width, fit: BoxFit.fill,)
                ),
                Container(
                  height: height*0.3,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white, Colors.white.withOpacity(0.7), Colors.black54.withOpacity(0.4)]
                      )

                  ),
                ),
                SizedBox(
                  height: height*0.3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: width*0.3,
                              // height: height*0.3,
                              child: Column(
                                children: [
                                  SizedBox(height: height*0.01,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:  [
                                          Text(startDay),
                                          Text(startDate, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                                          Text(startMonth)
                                        ],
                                      ),
                                      const Text(">", style: TextStyle(fontSize: 30,),),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:  [
                                          Text(endDay),
                                          Text(endDate, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                                          Text(endMonth)
                                        ],
                                      ),
                                    ],
                                  ),

                                ],
                              )
                          )

                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: width*0.125,),
                          Image.asset(auctionIcon,),
                          // Icon(Icons.home_outlined, size: width*.25, color: Colors.orangeAccent,),
                          SizedBox(width: width*0.05,),
                          Row(
                            children: [
                              Container(
                                width: width*0.04,
                                height: height*0.06,
                                decoration:  BoxDecoration(
                                    color: iconColor
                                ),
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: height*0.03,
                                        width: width*0.6,
                                        decoration:  const BoxDecoration(
                                            color: AppColors.black
                                        ),
                                      ),
                                      Container(
                                        height: height*0.03,
                                        width: width*0.6,
                                        decoration:  BoxDecoration(
                                            color: AppColors.blueColor?.withOpacity(0.3),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: width*.02,),
                                            const Icon(Icons.home_outlined, color: Colors.white, size: 20,),
                                            SizedBox(width: width*.02,),
                                            Text(name, style: const TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height*0.03,
                                    width: width*0.6,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[900]
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: width*.02,),
                                        const Icon(Icons.flag, color: Colors.white, size: 20,),
                                        SizedBox(width: width*.02,),
                                       Text(city, style: const TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],

            ),
            Row(
              children:  [
                const SizedBox(width: 12,),
                const Icon(Icons.access_time_rounded, size: 12,),
                const SizedBox(width: 5,),
                const Text("Timed Auction"),
                const Spacer(),
                Text(timeLeft),
              ],
            ),
            Row(
              children:  [
                const SizedBox(width: 5,),
                Text("Harare Goods Auction -$auctionCode", style: const TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children:  [
                const SizedBox(width: 5,),
                const Text("Auction Location :", style: TextStyle(fontWeight: FontWeight.bold),),
                Text(" $city", style: const TextStyle(color: Colors.red,decoration: TextDecoration.underline),)
              ],
            ),
            Row(
              children:  [
                const SizedBox(width: 5,),
                const Text("Spending Limit :", style: TextStyle(fontWeight: FontWeight.bold),),
                Text(" $spendingLimit", )
              ],
            ),
            SizedBox(height: height*0.01,),
            const Divider(thickness: 1,),
            Row(
              children:  [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(lots),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
