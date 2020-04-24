import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/shared/common.dart';
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
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CouponDescription(
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
                              width: MediaQuery.of(context).size.width*0.63,
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
                                                width: MediaQuery.of(context).size.width *0.51,
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
                                            child: GestureDetector(  
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





// class CouponCard extends StatefulWidget {
//     final Coupon coupon;
//   CouponCard({
//     this.coupon
//   });

//   @override
//   _CouponCardState createState() => _CouponCardState();
// }

// class _CouponCardState extends State<CouponCard> {
//   @override
//   Widget build(BuildContext context) {
//     double rh = MediaQuery.of(context).size.height;
//     double rw = MediaQuery.of(context).size.width;
//     return  Container(
//           height: rh,
//           width: rw,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ClipPath(
//                 clipper: TicketClipper(12.0),
//                 child: new Container(
//                   width: rw * 0.95,
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(8),
//                                 topRight: Radius.circular(8)),
//                             color: Color(0xffF0F4F7)),
//                         padding: EdgeInsets.only(
//                             left: 15, right: 15, top: 5, bottom: 5),
//                         child: new Row(
//                           children: <Widget>[
//                             Container(
//                               width: 70,
//                               height: 70,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/shp2.jpg"),
//                                       fit: BoxFit.fill),
//                                   borderRadius: BorderRadius.circular(8)),
//                             ),
//                             Container(
//                               // height: 80,
//                               width: 15,
//                               child: Dash(
//                                 length: 80,
//                                 direction: Axis.vertical,
//                                 dashLength: 4,
//                                 dashColor: Colors.grey[300],
//                                 dashThickness: 1,
//                               ),
//                             ),
//                             Expanded(
//                               child: new Column(
//                                 children: <Widget>[
//                                   new Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: <Widget>[
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.center,
//                                             children: <Widget>[
//                                               Icon(
//                                                 Icons.store,
//                                                 size: 18,
//                                               ),
//                                               Center(
//                                                 child: Text(
//                                                   'William John Pizza Store',
//                                                   style: TextStyle(
//                                                       color: Color(0xff064472),
//                                                       fontSize: 18),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Text(
//                                             ' Veg / Non-Veg',
//                                             style: TextStyle(
//                                                 color: Colors.black54,
//                                                 fontSize: 12),
//                                           )
//                                         ],
//                                       ),
//                                       Icon(
//                                         Icons.favorite_border,
//                                         size: 22,
//                                       )
//                                     ],
//                                   ),
//                                   new Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: <Widget>[
//                                       new Row(
//                                         children: <Widget>[
//                                           Icon(
//                                             Icons.star,
//                                             size: 18,
//                                             color: Color(0xffFED700),
//                                           ),
//                                           Text(
//                                             '4.8',
//                                           )
//                                         ],
//                                       ),
//                                       new Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                             mainAxisAlignment: MainAxisAlignment.end,
//                                         children: <Widget>[
//                                           Text(
//                                             '3:00 PM - 4:00PM',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.w800,
//                                                 fontSize: 12),
//                                           ),
//                                           SizedBox(height: 5,),
//                                           new Container(
//                                             padding: EdgeInsets.only(
//                                                 left: 5,
//                                                 right: 5,
//                                                 top: 2,
//                                                 bottom: 2),
//                                             decoration: BoxDecoration(
//                                                 color: Color(0xffFED700),
//                                                 borderRadius:
//                                                     BorderRadius.circular(8)),
//                                             child: Text('Happy Hour'),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(8),
//                                 bottomRight: Radius.circular(8)),
//                             color: Color.fromRGBO(255, 213, 2, 0.22)),
//                         padding: EdgeInsets.only(
//                             left: 10, right: 10, top: 2, bottom: 2),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               height: 15,
//                               width: 15,
//                                 child: Image.asset("images/discount.png",
//                                     fit: BoxFit.fill)),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: rw * 0.85 - 40,
//                               child: Text(
//                                 "Flat 20% off on shopping of  Rs. 200/- Flat 20% off on shopping of  Rs. 200/- ",
//                                 // maxLines: 2,
//                                 style: TextStyle(
//                                     fontSize: 12,
//                                     color: Color.fromRGBO(31, 90, 135, 1)),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//     );
//   }
// }

// class TicketClipper extends CustomClipper<Path> {
//   final double radius;

//   TicketClipper(this.radius);

//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0.0, size.height);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0.0);
//     path.addOval(
//         Rect.fromCircle(center: Offset(0.0, size.height / 2), radius: radius));
//     path.addOval(Rect.fromCircle(
//         center: Offset(size.width, size.height / 2), radius: radius));

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }
