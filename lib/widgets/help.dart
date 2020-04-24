
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class CouponCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double rh = MediaQuery.of(context).size.height;
    double rw = MediaQuery.of(context).size.width;
    return  Container(
          height: rh,
          width: rw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipPath(
                clipper: TicketClipper(12.0),
                child: new Container(
                  width: rw * 0.95,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            color: Color(0xffF0F4F7)),
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        child: new Row(
                          children: <Widget>[
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/shp2.jpg"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            Container(
                              // height: 80,
                              width: 15,
                              child: Dash(
                                length: 80,
                                direction: Axis.vertical,
                                dashLength: 4,
                                dashColor: Colors.grey[300],
                                dashThickness: 1,
                              ),
                            ),
                            Expanded(
                              child: new Column(
                                children: <Widget>[
                                  new Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                Icons.store,
                                                size: 18,
                                              ),
                                              Text(
                                                'William John Pizza Store',
                                                style: TextStyle(
                                                    color: Color(0xff064472),
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            ' Veg / Non-Veg',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        size: 22,
                                      )
                                    ],
                                  ),
                                  new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      new Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Color(0xffFED700),
                                          ),
                                          Text(
                                            '4.8',
                                          )
                                        ],
                                      ),
                                      new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            '3:00 PM - 4:00PM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 12),
                                          ),
                                          SizedBox(height: 5,),
                                          new Container(
                                            padding: EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 2,
                                                bottom: 2),
                                            decoration: BoxDecoration(
                                                color: Color(0xffFED700),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Text('Happy Hour'),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            color: Color.fromRGBO(255, 213, 2, 0.22)),
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 2, bottom: 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 15,
                              width: 15,
                                child: Image.asset("images/discount.png",
                                    fit: BoxFit.fill)),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: rw * 0.85 - 40,
                              child: Text(
                                "Flat 20% off on shopping of  Rs. 200/- Flat 20% off on shopping of  Rs. 200/- ",
                                // maxLines: 2,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(31, 90, 135, 1)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
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
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, size.height / 2), radius: radius));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
