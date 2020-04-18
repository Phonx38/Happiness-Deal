
import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';




import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CouponDescription extends StatefulWidget {
  final Coupon coupon;
  CouponDescription({
    this.coupon
  });
  @override
  _CouponDescriptionState createState() => _CouponDescriptionState();
}

class _CouponDescriptionState extends State<CouponDescription> {
  List<String> terms = [
    "This coupon is not valid for more that 3 people so come accordingly.",
    "This coupon is not valid for more that 3 people so come accordingly.",
    "This coupon is not valid for more that 3 people so come accordingly.",
  ];

  


  bool _favBtn = false;
  bool _arw = false;
  bool _showTerms = false;
  final primary = Color.fromRGBO(76,167,223,1);
  final secondary =  Color.fromRGBO(253,210,8,1.0);




       
  @override
  Widget build(BuildContext context) {
     List<String> areas = [
     "Allahabad",
     "Delhi",
     "Lucknow",
     "Vadodra",
     "Bangalore",
     "Lahsun",
     "Ahemdabad"
  ];
     
    return Scaffold(

      bottomNavigationBar: BottomAppBar(
        notchMargin: 0,
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top:0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 100,
                      elevation: 0,
                      onPressed:(){
                        
                      },
                      color: secondary,
                      child: Text("Buy Now",style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                      ),), 
                    ),
                  ),
                ),
              ),
              SizedBox(width:10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    child: MaterialButton(
                      height: 50,
                      elevation: 0,
                      onPressed:(){

                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(),
                        );
                      },
                      color: primary,
                      child: Text("Add To Cart",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),), 
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),




     appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          titleSpacing: 0,
          elevation: 0,
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
                          onTap: (){
                            Navigator.pop(context);
                          }
                          
                          
                        ),
                  ),
                ),
              ),
              title: Container(
                margin: EdgeInsets.all(0),
                child: Text("HappyDeal Details")),
        ),
      ),


      body: Container(
        child:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                        children: <Widget>[
                          HomePageBg(screenHeight: MediaQuery.of(context).size.height* 0.20,color: primary,),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              height: MediaQuery.of(context).size.height*0.26,
                              width: MediaQuery.of(context).size.width*0.95,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(widget.coupon.couponImg,fit: BoxFit.fill,)),
                            ),
                          ),
                          Positioned(
                            right: 15,
                           
                            child: MaterialButton(
                              minWidth: 20,
                              height: 15,
                              padding: EdgeInsets.all(2),
                              onPressed: (){


                              },
                              color: secondary,
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Photos ",style: TextStyle(fontSize: 10,color: Colors.black87,fontWeight: FontWeight.bold),),
                                  Image.asset("images/menu/next.png",height: 8,width: 8,),
                                ],
                              ),
                              ),
                          )
                          
                        ],
                      ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:12.0,right:15.0,top:10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset("images/discount.png",width: 20,height: 20,fit: BoxFit.fill,),
                          SizedBox(width: 5,),
                          Expanded(
                            
                            
                            child: Container(
                              width: MediaQuery.of(context).size.width*75,
                              child: Text(
                                widget.coupon.couponDesc,
                                // maxLines: 2,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(2,68,119,1)
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(  
                            child: _favBtn ? Icon(Icons.favorite,color: Colors.redAccent,size: 25,) : Icon(Icons.favorite_border,color: Colors.black,size: 27) ,
                              onTap: (){setState(() {
                                _favBtn = !_favBtn;
                              });
                              },
                              
                          )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right:0.0,top:20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width/3,
                            child: Row(
                              children: <Widget>[
                                Image.asset("images/calendar.png",height: 13,width: 13,fit: BoxFit.fill,),
                                SizedBox(width:2),
                                Text("Valid Till: ${widget.coupon.startDate}",style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width/3,
                            child: Row(
                              children: <Widget>[
                                Image.asset("images/discounticon.png",height: 15,width: 15,fit: BoxFit.fill,),
                                SizedBox(width:2),
                                Text("Happy Hour Deal",style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width/3,
                            child: Row(
                              children: <Widget>[
                                Image.asset("images/timer1.png",height: 15,width: 15,fit: BoxFit.fill,),
                                SizedBox(width:2),
                                Text("3:00PM - 4:00PM ",style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                  ),
                ),
                Padding(
                   padding: const EdgeInsets.only(left:15.0,right:15.0,top:0),
                  child: Divider(),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("HappyDeal by",style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 13
                      ),),

                      Row(
                        children: <Widget>[
                          Image.asset("images/discount.png",height: 12,width: 12,fit: BoxFit.fill,),
                          SizedBox(width:5),
                          Text("3 More Deals",style: TextStyle(
                            color: Color.fromRGBO(2,68,119,0.8),
                            // fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                      text:"${widget.coupon.dealBy}",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "Montserrat-Medium")
                                    ),
                                     TextSpan(
                                      text:"(3 Outlets)",style: TextStyle(fontSize: 13,color: Colors.black54,fontFamily: "Montserrat-Medium")
                                    )
                                    ]
                                  ),
                                ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:17.0,right:15.0,top:0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Veg/Non-Veg",style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:17.0,right:17.0,top:5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color:Colors.lightGreen
                        ),
                        child: Center(
                          child: Text("4.6",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),),
                        ),
                      ),
                      SizedBox(width:3),
                      RatingBar(
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                        tapOnlyMode: false,
                        itemSize: 18,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height*0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primary,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                   Image.asset("images/storeicon.png",height: 20,width: 20,fit: BoxFit.fill,),
                                   SizedBox(height:2),
                                   Text("Store",style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 13
                                   ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          child: VerticalDivider(
                            thickness: 2,
                            color:secondary,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                   Image.asset("images/phone1.png",height: 20,width: 20,fit: BoxFit.fill,),
                                   SizedBox(height:2),
                                   Text("Call",style:TextStyle(
                                     color: Colors.white,
                                     fontSize: 13
                                   ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          child: VerticalDivider(
                            thickness: 2,
                            color:secondary,
                            )),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){

                              showGeneralDialog(
                                barrierLabel: "Label",
                                barrierDismissible: true,
                                barrierColor: Colors.black.withOpacity(0.5),
                                transitionDuration: Duration(milliseconds: 200),
                                context: context,
                                pageBuilder: (context, anim1, anim2) {
                                  return Wrap(
                                    children:<Widget>[
                                       Material(
                                         borderRadius: BorderRadius.circular(10),
                                         child: Container(
                                      
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            height: 300,
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 8.0,left:8.0),
                              child: Column(
                                    children: <Widget>[
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("Area : ", style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                              ),),

                                            GestureDetector(
                                                onTap: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(Icons.cancel,size:30,color:primary))

                                          ],
                                      ),
                                      Divider(),

                                      Expanded(
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: areas.length,
                                            itemBuilder: (context,index){
                                              return Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Center(
                                                    child: Text(areas[index],style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15
                                                    ),),
                                                  ),

                                                  Divider()
                                                ],

                                              );
                                            },
                                          ),
                                      )
                                    ],
                              ),
                            )
                          ),
                                       ),]
                                  );
                                
                                },
                                transitionBuilder: (context, anim1, anim2, child) {
                                  return SlideTransition(
                                    position: Tween(begin: Offset(0, 1), end: Offset(0.05, 0.5)).animate(anim1),
                                    child: child,
                                  );
                                },
                              );
  
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                     Image.asset("images/location.png",height: 20,width: 20,fit: BoxFit.fill,),
                                     SizedBox(height:2),
                                     Text("Location",style:TextStyle(
                                       color: Colors.white,
                                       fontSize: 13
                                     ),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Text("Terms & conditions",style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 18,
                       color: Colors.black87
                     ),),
                     GestureDetector(  
                            child: _arw ? Icon(Icons.keyboard_arrow_down,color: Colors.black87,size: 30,) : Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 30) ,
                              onTap: (){setState(() {
                               _arw = !_arw;
                               _showTerms = !_showTerms;
                              });
                              },
                              
                          )
                     
                    ],
                  ),
                ),

                _showTerms? Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:5),
                  child: Container(
                    
                    child: SingleChildScrollView(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: terms.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: EdgeInsets.all(4),

                            child: Text("- ${terms[index]}",style: TextStyle(
                              fontSize: 11
                            ),),
                          );

                        }
                      ),
                    ),
                  ),
                ):Container(height: 0,)

              ],
            ),
          ),
        )
      ),
    );
    
  }
}



class CustomDialog extends StatelessWidget {
  



  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
      ),      
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height *0.3,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.cancel,size:30,color:primary))
                ],
              ),
              Divider(),

              Row(
                children: <Widget>[
                  Text("Qty: ", style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),

                  ProductCount(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: secondary,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



class ProductCount extends StatefulWidget {
  @override
  _ProductCountState createState() => _ProductCountState();
}

class _ProductCountState extends State<ProductCount> {
  int _n = 0;

  void add() {
  setState(() {
    _n++;
   });
  }

  void minus() {
    setState(() {
      if (_n != 0) 
        _n--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new MaterialButton(
            minWidth: 30,
            onPressed: add,
            child: Center(child: new Icon(Icons.add, color: Colors.white,)),
            color: primary,
            ),

          Container(
            width: 50,
            child: Center(
              child: new Text('$_n',
                  style: new TextStyle(fontSize: 18.0)),
            ),
          ),

          new MaterialButton(
            minWidth: 30,
            onPressed: minus,
            child: Center(child: new Icon(Icons.minimize, color: Colors.white,)),
            color: primary,
            ),
        ],
      ),
    
    );
  }
}