
import 'package:couponzz/models/coupon.dart';
import 'package:flutter/material.dart';
class CouponCard2 extends StatefulWidget {
  final Coupon coupon;
  CouponCard2({
    this.coupon
  });

  @override
  _CouponCard2State createState() => _CouponCard2State();
}

class _CouponCard2State extends State<CouponCard2> {
  bool _favBtn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: InkWell(
        onTap: (){
          

        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(62, 168, 174, 201),
                offset: Offset(0,9),
                blurRadius: 14,

              ),
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              clipper: TicketClipper(10.0),

              child: Material(
                color: Colors.transparent,
                shadowColor: Color(0x30E5E5E5),
                elevation: 0.0,
                child: ClipPath(
                  clipper: TicketClipper(12.0),
                  child: Card(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          widget.coupon.couponImg,
                          
                          height: 300.0,
                          width: 300.0,
                          fit: BoxFit.fill,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.5),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ]
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(),
                              ),
                          ),
                        ),
                        Positioned( 
                          bottom: 110,
                          left: 5,
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0,),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                    text:"${widget.coupon.couponDesc}",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold,)
                                  )
                                  ]
                                ),
                              ),
                            ),
                          )
                        ),
                        Positioned( 
                          bottom: 75,
                          left: 5,
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0,),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                    text:"HappyDeal by:",style: TextStyle(letterSpacing: 1.0,fontFamily: 'Pacifico-Regular',fontSize: 13,color: Colors.red[300],fontWeight: FontWeight.bold,)
                                  )
                                  ]
                                ),
                              ),
                            ),
                          )
                        ),
                        Positioned( 
                          bottom: 55,
                          left: 5,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0,),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                    text:"${widget.coupon.dealBy}",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,)
                                  )
                                  ]
                                ),
                              ),
                            ),
                          )
                        ),
                        Positioned( 
                          bottom: 0,
                          left: 5,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right:13.0,left:4.0),
                                  child: FlatButton.icon(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                    clipBehavior: Clip.antiAlias,
                                    color:Colors.amber,
                                    onPressed: (){},
                                    icon: Icon(Icons.shopping_cart,color: Colors.white,),
                                    label: Text('Add to cart',style:TextStyle(color: Colors.white,)),
                                    ),
                                ),

                                  FlatButton.icon(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                    clipBehavior: Clip.antiAlias,
                                  color:Colors.amber,
                                  onPressed: (){},
                                  icon: Icon(Icons.attach_money,color: Colors.white,),
                                  label: Text('Buy Now',style:TextStyle(color: Colors.white,)),
                                  )
                              ],
                            ),
                          )
                        ),
                        
                        Positioned( 
                          top: 0,
                          right:0,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: IconButton(
                              icon: Icon(Icons.favorite,color:_favBtn ? Colors.redAccent : Colors.grey[300],), 
                              onPressed: () => setState(() => _favBtn = !_favBtn),
                              )
                          )
                        )
                      ],
                    ),
                  ),
                ),
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