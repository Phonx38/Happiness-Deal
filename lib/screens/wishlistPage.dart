

import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/screens/couponDesc.dart';
import 'package:couponzz/shared/common.dart';
import 'package:couponzz/shared/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';


class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      
        child: Container(
          child:Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
               child: Image.asset('images/merchant/merchantback.png',fit: BoxFit.fill,)
              ),

              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                           
                            color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            
                          ),
                      height: MediaQuery.of(context).size.height*0.07,
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top:10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                         
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(bottom: 10,),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: couponCards.length,
                                  itemBuilder:(_,index){
                                    final Coupon couponCard = couponCards[index];
                                    return WishlistCard(
                                      coupon: couponCards[index],
                                    );
                                  } 
                                  ),
                              ),
                            ],
                          ),
                        ),
                    )
                    )
                ],
              ),






              Positioned(
                top: 10,
                left: 10,
                width: MediaQuery.of(context).size.width*0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      
                        Card(
                          margin: EdgeInsets.only(top:0,left: 0),
                          elevation: 6.0,
                          color: primary,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,),
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            }  
                          ),
                    ),


                    SizedBox(width: 10,),
                    Text("Wishlist",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                   
                  ],
                ),

              ),
            ],
          )
        ),
      ),
    );
  }
}






class WishlistCard extends StatefulWidget {
  final Coupon coupon;
  WishlistCard({
    this.coupon
  });
  @override
  _WishlistCardState createState() => _WishlistCardState();
}

class _WishlistCardState extends State<WishlistCard> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0,left: 8,right: 8,bottom: 10),
      child: Column(
        children: <Widget>[
            Container(
              padding: const EdgeInsets.all(6.0),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
                color: Color.fromRGBO(240,244,247,1),
              ),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.coupon.couponImg,
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8,right: 2),
                      child: Container(
                        // width: MediaQuery.of(context).size.width*0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top:1.0),
                                          child: Image.asset("images/discount.png",height: 15,),
                                        ),
                                        SizedBox(width: 2,),
                                        Container(
                                          width: MediaQuery.of(context).size.width *0.60,
                                          child: Text(widget.coupon.couponDesc,
                                          style: TextStyle(
                                            color:primary,

                                            // fontWeight: FontWeight.bold,
                                            fontSize: 11),)),

                                      ],
                                  ),
                                  
                                  ],
                                ),
                                
                              ],
                            ),
                            
                            
                            
                            
                            
                            Container(
                              margin: EdgeInsets.only(top:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Column(
                                    
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right:10.0,top:2.0,bottom: 2.0,left: 2.0),
                                        child: Text("3:00PM-4:00PM",style: TextStyle(
                                          color: Colors.grey[700],fontSize:10 ,fontWeight: FontWeight.bold)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 0),
                            Padding(
                              padding: const EdgeInsets.only(bottom:2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(Icons.star,color:secondary,size: 18,),
                                      SizedBox(width:5),
                                      Text("4.5",style: TextStyle(color: Colors.grey[700],fontSize: 14))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:10.0,top:2.0,bottom: 2.0,left: 2.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: secondary
                                      ),
                                      
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text("Happy Hour",style: TextStyle(color: Colors.grey[700],fontSize: 11)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(253,210,8,0.2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )
              ),
              
              padding: EdgeInsets.only(top: 5,left: 15,right: 15,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Add to Cart',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey[700]
                      ),),
                      SizedBox(width:5),
                      Icon(Icons.shopping_cart,size:15,color: Colors.grey[700])
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[700],
                        width: 1
                      )
                    ),

                    child: VerticalDivider(),
                    
                  ),
                  Row(
                    children: <Widget>[
                      Text('Remove',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                        fontSize: 12
                      ),),
                      SizedBox(width:5),
                      Icon(Icons.delete,size:15,color: Colors.grey[700])
                    ],
                  ),
                ],
              ),
            )
            
        ],
      ),
    );
  }
}
