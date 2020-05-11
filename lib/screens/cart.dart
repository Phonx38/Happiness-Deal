import 'package:badges/badges.dart';
import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/screens/couponDesc.dart';
import 'package:couponzz/shared/common.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          elevation: 0,
          title: Text('Cart'),
          backgroundColor: primary,
          leading:  Builder(
                builder: (context) => Center(
                  child: Card(
                    margin: EdgeInsets.only(top:0,left: 0),
                    elevation: 4.0,
                    color: primary,
                    child: GestureDetector(
                      
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.arrow_back_ios,size: 20,),
                          ),
                          onTap: () => Scaffold.of(context).openDrawer(),
                          // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                          
                        ),
                  ),
                ),
              ),
              actions: <Widget>[
                Padding(
              padding: const EdgeInsets.only(right:10.0,top:5),
              child: Container(
                height: 30,
                child: Badge(
                  padding: EdgeInsets.all(2),
                  position: BadgePosition(right: 0,bottom: 19),
                  badgeColor: Color.fromRGBO(253,210,8,1.0),
                  badgeContent: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8),),
                  child: Icon(Icons.notifications),
                ),
              ),
            ),

              ],
        ),
      ),





      body:SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Stack(
              
              children: <Widget>[
                HomePageBg(screenHeight: MediaQuery.of(context).size.height* 0.30,color:primary),

                // CouponCardList()
              ],
            ),
          ),
        ),
      )
    );
  }
}







