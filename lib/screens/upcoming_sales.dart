import 'package:abc_clone/contants/appColors.dart';
import 'package:flutter/material.dart';

class UpcomingSales extends StatelessWidget {
  const UpcomingSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text("Upcoming Sales", style: TextStyle(color: AppColors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
      icon: const Icon(Icons.menu, color: AppColors.black,),
    ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: AppColors.black,)),
          // IconButton(onPressed: (){}, icon: Icon(Icons., color: AppColors.black,))
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            SizedBox(
              width: width,
              child: Stack(
                children: [
                  SizedBox(
                    width: width,
                      child: Image.asset("assets/images/couch.jpeg",height: height*0.3,  width: width, fit: BoxFit.fill,)
                  ),
                  Container(
                    height: height*0.3,
                      width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, Colors.white.withOpacity(0.5), Colors.black54.withOpacity(0.4)]
                      )

                    ),
                  ),
                  SizedBox(
                    height: height*0.3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              SizedBox(
                                  width: width*0.3,
                                  // height: height*0.3,
                                  child: Column(
                                    children: [
                                      SizedBox(height: height*0.01,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(width: 10,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("MON"),
                                              Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                                              Text("APR")
                                            ],
                                          ),
                                          Text(">", style: TextStyle(fontSize: 30,),),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("MON"),
                                              Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                                              Text("APR")
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
                              SizedBox(width: width*0.1,),
                              Icon(Icons.home_outlined, size: width*.25, color: Colors.orangeAccent,),
                              SizedBox(width: width*0.01,),
                              Row(
                                children: [
                                  Container(
                                    width: width*0.04,
                                    height: height*0.06,
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: height*0.03,
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                            color: Colors.indigo[900]
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: width*.02,),
                                            Icon(Icons.home_outlined, color: Colors.white, size: 20,),
                                            SizedBox(width: width*.02,),
                                            Text("HRE Goods", style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: height*0.03,
                                        width: width*0.6,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[800]
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: width*.02,),
                                            Icon(Icons.flag, color: Colors.white, size: 20,),
                                            SizedBox(width: width*.02,),
                                            Text("Harare, Zimbabwe", style: TextStyle(color: Colors.white),)
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
            )

          ],
        ),
      ),

      drawer: const Drawer(

      ),
    );
  }
}
