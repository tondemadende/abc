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
                      child: Image.asset("assets/images/couch.jpeg", height: height*0.3, width: width,))
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
