import 'package:couponzz/models/merchant.dart';


class Coupon{
  final String dealBy;
  final String dealType;
   final String catagory;
  final String startDate;
  final String expireDate;
  final String couponImg;
  final String couponDesc;
  final String ratings;
  final String discount;

  Coupon({
    this. dealBy,
    this.dealType,  
    this.catagory,
    this.startDate,
    this.expireDate,
    this.couponImg,
    this.couponDesc,
     this.ratings,
      this.discount,
  });
}






final Merchant dominoes =  Merchant(
  merchantId: 1,merchantName: "Dominoes",merchantAdd: "New York", merchantWebsite: "www.Dominoes.com",merchantNumber: 123456891,bussinessType: "food"
);
final Merchant pizzaHut =  Merchant(
  merchantId: 2,merchantName: "Pizza hut",merchantAdd: "New York", merchantWebsite: "www.Dominoes.com",merchantNumber: 123456891,bussinessType: "food"
);
final Merchant allen =  Merchant(
  merchantId: 3,merchantName: "Allen Soly",merchantAdd: "New York", merchantWebsite: "www.Dominoes.com",merchantNumber: 123456891,bussinessType: "Fashion"
);
final Merchant salad =  Merchant(
  merchantId: 4,merchantName: "SaladWala",merchantAdd: "New York", merchantWebsite: "www.Dominoes.com",merchantNumber: 123456891,bussinessType: "food"
);
final Merchant jeans =  Merchant(
  merchantId: 5,merchantName: "Pepe jeans",merchantAdd: "New York", merchantWebsite: "www.Dominoes.com",merchantNumber: 123456891,bussinessType: "fashion"
);
final Merchant burrito =  Merchant(
  merchantId: 6,merchantName: "California burrito",merchantAdd: "New York", merchantWebsite: "www.Dominoes.com",merchantNumber: 123456891,bussinessType: "food"
);




List<Coupon> couponCards = [
  Coupon(
    dealBy: dominoes.merchantName,
    dealType: "full day",
    startDate: "12/10/20",
    expireDate: "12/12/20",
    couponImg: "images/shp3.jpg",
    couponDesc: "Flat 20% off on shopping of Rs. 200/- only.",
    discount: "30% off",
    catagory: dominoes.bussinessType,
    ratings: "50/100"
  ),


  Coupon(
    dealBy: pizzaHut.merchantName,
    dealType: "full day",
    startDate: "12/10/20",
    expireDate: "12/12/20",
    couponImg: "images/shp2.jpg",
    couponDesc: "30%  0f on Pizza Overloaded ",
    discount: "30% off",
    catagory: dominoes.bussinessType,
    ratings: "50/100"

  ),


  Coupon(
    dealBy: burrito.merchantName,
    dealType: "full day",
    startDate: "12/10/20",
    expireDate: "12/12/20",
    couponImg: "images/shp1.jpg",
    couponDesc: "30%  0f on Burrito ",
    discount: "30% off",
    catagory: dominoes.bussinessType,
    ratings: "50/100"
  ),


  Coupon(
    dealBy: allen.merchantName,
    dealType: "Full Day",
    startDate: "12/10/20",
    expireDate: "12/12/20",
    couponImg: "images/shp2.jpg",
    couponDesc: "30%  0f on shirts ",
    discount: "30% off",
    catagory: dominoes.bussinessType,
    ratings: "50/100"
  ),

  Coupon(
    dealBy: jeans.merchantName,
    dealType: "Full day" ,
    startDate: "12/10/20",
    expireDate: "12/12/20",
    couponImg: "images/shp3.jpg",
    couponDesc: "30%  0f on Jeans ",
    discount: "30% off",
    catagory: dominoes.bussinessType,
    ratings: "50/100"
  ),
];