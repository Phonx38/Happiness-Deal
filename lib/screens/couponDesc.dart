
import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';




import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:flutter/material.dart';


class CouponDescription extends StatefulWidget {
  final Coupon coupon;
  CouponDescription({
    this.coupon
  });
  @override
  _CouponDescriptionState createState() => _CouponDescriptionState();
}

class _CouponDescriptionState extends State<CouponDescription> {
  final primary = Color.fromRGBO(2,68,119,1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton.extended(
          backgroundColor: primary,
          onPressed: (){}, 
          label: Text("Add To Cart",style: TextStyle(color:Colors.white),),
          icon: Icon(Icons.shopping_basket,size: 20,color: secondary,),
          ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                
                child: Image.asset("images/shp1.jpg",fit: BoxFit.fill,)),
              
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,color:Colors.white,),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      ),
                    Spacer(),
                    
                  Icon(Icons.notifications,color:Colors.white,size: 25,),
                  
                    ],
                  ),
                  SizedBox(height: 160,),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(60)
                  //   ),
                  //   child: Image.asset("images/shp1.jpg")
                  //   ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                        ),
                        child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                        ),
                          ),
                          elevation: 10.0,
                          child: Container(
                            
                            height: 600,
                            width: MediaQuery.of(context).size.width,
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Text("Dominoes",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                                               Container(
                                                 child: Row(
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                            ],
                                          ),
                                               ),
                                        ],
                                          ),
                                          Container(
                                            color: Colors.grey[50],
                                            child: IconButton(icon: Icon(Icons.favorite,color: Colors.grey[400],size: 30,), onPressed: (){}))
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              
              
              
                  
                
          ],),
        ),
      ),
    );
  }
}