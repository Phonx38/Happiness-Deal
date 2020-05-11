import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/shared/common.dart';
import 'package:couponzz/shared/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:couponzz/screens/couponDesc.dart';
import 'package:flutter_icons/flutter_icons.dart';





class CouponCard extends StatefulWidget {
  final Coupon coupon;
  CouponCard({
    this.coupon
  });
  @override
  _CouponCardState createState() => _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {
  bool _favBtn = false;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(10.0),
      child: Material(
        elevation: 0.0,
        shadowColor: Color(0x30E5E5E5),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom:0.0,left: 4,right: 4,),
          child: ClipPath(
            clipper: TicketClipper(12.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, SlideLeftRoute(page:CouponDescription(
                  coupon: widget.coupon,
                )));
              },
              child: Card(
                elevation: 0.0,
                color: Color.fromRGBO(240,244,247,1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                child:Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF0F4F7)
                      ),
                      child: Row(
                        
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(right:10.0,left: 10.0,top: 0.0),
                             child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                              
                                widget.coupon.couponImg,
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                                width: 80,
                                height: 80,
                                )
                              ),
                           ),

                           Padding(
                            padding: const EdgeInsets.only(left:2.0,right: 8.0),
                            child: Container(
                              child: Dash(
                                length: MediaQuery.of(context).size.height*0.140,
                                direction: Axis.vertical,
                                dashLength: 5,
                                dashColor: Colors.grey[300],
                                dashThickness: 1,
                               ),
                            ),
                           ),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.60,
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
                                                padding: const EdgeInsets.only(top:3.0),
                                                child: Image.asset("images/couponshop.png"),
                                              ),
                                              SizedBox(width: 2,),
                                              Container(
                                                width: MediaQuery.of(context).size.width *0.49,
                                                child: Text(widget.coupon.dealBy,style: TextStyle(color: Color.fromRGBO(31,90,135,1),fontWeight: FontWeight.bold,fontSize: 15),)),

                                            ],
                                        ),
                                        Text("Veg/Non-Veg",style: TextStyle(color: Colors.black,fontSize: 10),),
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right:8.0),
                                          child: Container(
                                            width: 30,
                                            child: InkWell(  
                                              child: _favBtn ? Icon(Icons.favorite,color: Colors.redAccent,) : Icon(Icons.favorite_border,color: Colors.black,) ,
                                                onTap: (){setState(() {
                                                  _favBtn = !_favBtn;
                                                });
                                               },
                                               
                                            ),
                                          ),
                                        ),
                                      )
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
                                              child: Text("3:00PM-4:00PM",style: TextStyle(color: Colors.black,fontSize:10 ,fontWeight: FontWeight.bold)),
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
                                            Text("4.5",style: TextStyle(color: Colors.black,fontSize: 14))
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
                                              child: Text("Happy Hour",style: TextStyle(color: Colors.black,fontSize: 11)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(243,237,193,1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                  )
                                ),
                      
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0,bottom: 5.0,top: 5.0,right: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset("images/discount.png",height: 15,width: 15,fit: BoxFit.fill,),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                  )
                                ),
                                width: MediaQuery.of(context).size.width,
                                
                                child: Text(
                                  widget.coupon.couponDesc,
                                  // maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(31, 90, 135, 1)
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  final double radius;

  TicketClipper(this.radius);

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.addOval(
        Rect.fromCircle(center: Offset(0.0, size.height / 2), radius: radius));
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, size.height / 2), radius: radius));
        
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


