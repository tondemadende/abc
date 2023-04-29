import 'package:flutter/material.dart';

import '../contants/appColors.dart';

class BlueButton extends StatelessWidget {
  final String? btnText;
  final double? btnTextSize;
  final Color? btnColor;
  final Color? btnTextColor;
  final VoidCallback? onTap;
  final EdgeInsets? margin;
  final double? btnWidth;
  final double? btnHeight;

   const BlueButton({Key? key,
    required this.onTap,
    this.btnText = "Btn Text",
    this.btnTextSize,
    this.btnColor = Colors.indigo,
    this.btnTextColor,
    this.margin,
    this.btnWidth,
    this.btnHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: margin ?? const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          Container(
            width: width*0.6,
            height: height*0.08,
            decoration:  BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),

          SizedBox(
            width: width*0.6,
            height: height*0.08,
            child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: btnColor!.withOpacity(0.2),
                elevation: 1.0,
                /*side: BorderSide(
                  color: borderColor!,
                  width: 1.0,
                ),*/
                shadowColor: AppColors.black.withOpacity(0.1),
                minimumSize: Size(btnWidth ?? MediaQuery.of(context).size.width, btnHeight ?? 45.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Center(
                child: Text(
                  btnText!, textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
