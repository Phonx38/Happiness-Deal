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
        elevation: 4.0,
        shadowColor: Color(0x30E5E5E5),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipPath(
            clipper: TicketClipper(12.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CouponDescription(
                  coupon: widget.coupon,
                )));
              },
              child: Card(
                elevation: 2.0,
                color: Color.fromRGBO(240,244,247,1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(240,244,247,1)
                  ),
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(right:4.0,left: 8.0,top: 0.0),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                          
                            widget.coupon.couponImg,
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                            width: 90,
                            height: 100,
                            )
                          ),
                       ),

                       Padding(
                        padding: const EdgeInsets.only(left:4.0,right: 8.0),
                        child: Dash(
                          length: MediaQuery.of(context).size.height*0.157,
                          direction: Axis.vertical,
                          dashLength: 5,
                          dashColor: Colors.grey[300],
                          dashThickness: 1,
                         ),
                       ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.58,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      
                                      children: <Widget>[
                                        Image.asset("images/discount.png"),
                                        SizedBox(width: 5,),
                                        Container(
                                          width:160,
                                          
                                          child: Text(
                                            widget.coupon.couponDesc,
                                            // maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(31,90,135,1)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(  
                                    child: _favBtn ? Icon(Icons.favorite,color: Colors.redAccent,) : Icon(Icons.favorite_border,color: Colors.black,) ,
                                      onTap: (){setState(() {
                                        _favBtn = !_favBtn;
                                      });
                                     },
                                     
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height:5),
                            Row(
                              children: <Widget>[
                                Image.asset("images/couponshop.png"),
                                SizedBox(width: 5,),
                                Text(widget.coupon.dealBy,style: TextStyle(color: Color.fromRGBO(117,186,229,1),fontWeight: FontWeight.bold,fontSize: 15),),
                              ],
                            ),
                            SizedBox(height:2),
                            Text("Veg/Non-Veg",style: TextStyle(color: Colors.black,fontSize: 10),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Column(
                                  
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(" 3:00 -4:00 ",style: TextStyle(color: Colors.black,fontSize:11 ,fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(bottom:8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(Icons.star,color:secondary,size: 13,),
                                      SizedBox(width:5),
                                      Text("4.5",style: TextStyle(color: Colors.black,fontSize: 11))
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Happy Hour",style: TextStyle(color: Colors.black,fontSize: 11)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
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
