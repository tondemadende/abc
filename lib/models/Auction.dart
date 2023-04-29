
import 'dart:ui';

class AuctionModel{
  String? name;
  String? city;
  String? auctionCode;
  String? spendingLimit;
  String? startDay;
  String? startDate;
  String? startMonth;
  String? endDay;
  String? endDate;
  String? endMonth;
  String? auctionBackground;
  String? auctionIcon;
  String? lots;
  String? timeLeft;
  Color  iconColor;


  AuctionModel( {
    this.name,
    this.city,
    this.auctionCode,
    this.spendingLimit,
    this.startDay,
    this.startDate,
    this.startMonth,
    this.endDay,
    this.endDate,
    this.endMonth,
    this.auctionBackground,
    this.auctionIcon,
    this.lots,
    this.timeLeft,
    required this.iconColor,

  });

  factory AuctionModel.fromMap(map)
  {
    return AuctionModel(
      name: map['name'],
      city: map['city'],
      auctionCode: map['auctionCode'],
      spendingLimit: map['spendingLimit'],
      startDate: map['startDate'],
      startDay : map['startDay'],
      startMonth : map['startMonth'],
      endDate : map['endDate'],
      endDay : map['endDay'],
      endMonth : map['endMonth'],
      auctionBackground : map['auctionBackground'],
      auctionIcon : map['auctionIcon'],
      lots : map['lots'],
      timeLeft : map['timeLeft'],
      iconColor : map['iconColor'],


    );
  }

  Map<String, dynamic> toMap(){
    return{
      'name': name,
      'city': city,
      'auctionCode': auctionCode,
      'spendingLimit': spendingLimit,
      'startDate': startDate,
      'startDay' : startDay,
      'startMonth' : startMonth,
      'endDay' : endDay,
      'endDate' : endDate,
      'endMonth' : endMonth,
      'auctionBackground' : auctionBackground,
      'auctionIcon' : auctionIcon,
      'lots' : lots,
      'timeLeft' : timeLeft,
      'iconColor' : iconColor,

    };
  }


}