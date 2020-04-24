


import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/widgets/couponCard.dart';
import 'package:flutter/material.dart';



class CouponCardList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      
       itemCount: couponCards.length,
        itemBuilder: (_,index){
          final Coupon couponCard = couponCards[index];
          return Container(
            width:MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Padding(
                padding: const EdgeInsets.only(left:2.0,right: 2.0),
                child: CouponCard(
                  coupon:couponCards[index]
                ),
              ),
            ),
          );
        }
    );
    
    
  }
}
