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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipPath(
        clipper: TicketClipper(12.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CouponDescription(
              coupon: widget.coupon,
            )));
          },
          child: Column(
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
                       padding: const EdgeInsets.only(right:4.0,left: 10.0,top: 0.0),
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                            children: <Widget>[
                              Image.asset("images/couponshop.png"),
                              SizedBox(width: 2,),
                              Text(widget.coupon.dealBy,style: TextStyle(color: Color.fromRGBO(31,90,135,1),fontWeight: FontWeight.bold,fontSize: 15),),
                            ],
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
                          
                          
                          
                          Text("Veg/Non-Veg",style: TextStyle(color: Colors.black,fontSize: 10),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(" 3:00-4:00 ",style: TextStyle(color: Colors.black,fontSize:11 ,fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.star,color:secondary,size: 18,),
                                    SizedBox(width:5),
                                    Text("4.5",style: TextStyle(color: Colors.black,fontSize: 14))
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: secondary
                                  ),
                                  
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
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
              ),
              Container(
                color: Color.fromRGBO(243,237,193,1),
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
                          width: MediaQuery.of(context).size.width,
                          
                          child: Text(
                            widget.coupon.couponDesc,
                            // maxLines: 2,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(31,90,135,1)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
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
