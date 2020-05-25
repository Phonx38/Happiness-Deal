import 'dart:async';

import 'package:couponzz/models/coupon.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Benefits extends StatefulWidget {
  @override
  _BenefitsState createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
  @override
   bool isPending = true;
  bool isUsed = false;
  
  
   _buildPendingDeals(){
     return Container(
        padding: EdgeInsets.only(bottom: 10,),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: couponCards.length,
          itemBuilder:(_,index){
            final Coupon couponCard = couponCards[index];
            return OrderCard(
              coupon: couponCards[index],
            );
          } 
          ),
      );
   }


    _buildUsedDeals(){
      return Container(
          padding: EdgeInsets.only(bottom: 10,),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: couponCards.length,
            itemBuilder:(_,index){
              final Coupon couponCard = couponCards[index];
              return UsedOrderCard(
                coupon: couponCards[index],
              );
            } 
            ),
    );
   }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                2.0, // Move to right 10  horizontally
                2.0, // Move to bottom 10 Vertically
              ),
            )
          ]
        ),
        padding: EdgeInsets.all(2),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              elevation: 0,
               minWidth: 150,
              color: isPending ?darkPrimary:primary,
              onPressed: (){
                Timer(Duration(milliseconds: 100), () {
                  setState(() {
                                  isPending = true;
                                  isUsed = false;
                                });
                });
               
              },
              child: Text(
                'PENDING DEALS',
                style: TextStyle(
                  color: Colors.white,  
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),
              ),
            ),
             MaterialButton(
               elevation: 0,
               minWidth: 150,
              color: isUsed ? darkPrimary:primary,
              onPressed: (){
                setState(() {
                  isUsed = true;
                  isPending = false;
                });
              },
              child: Text(
                'USED DEALS',
                style: TextStyle(
                  color: Colors.white,  
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),
              ),
            ),
            
          ],

        ),
      ),
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
                              isPending ? _buildPendingDeals() : _buildUsedDeals()
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
                    Text("Benefits",style: TextStyle(
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



class OrderCard extends StatefulWidget {
   final Coupon coupon;
  OrderCard({
    this.coupon
  });
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipPath(
        clipper: TicketClipper(10.0),
        child: Material(
          elevation: 0.0,
          shadowColor: Color(0x30E5E5E5),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom:0.0,left: 4,right: 4,),
            child: ClipPath(
              clipper: TicketClipper(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: new DecorationImage(
                  image: new AssetImage('images/orders/back.png'),
                  fit: BoxFit.fill,
                ),
                ),
            // gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   colors: [Color.fromRGBO(62,144,197,1),Color.fromRGBO(13,66,107,1)])),
                height: 320,
                width: 100,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Container(
                          margin: EdgeInsets.only(top:0, left: 8,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('OFFER GOT ON',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondary,
                                      fontSize:8
                                    ),),
                                    Text('12 May, 2020',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:11
                                    ),),
                                    Tooltip(

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomLeft:Radius.circular(10),
                                          bottomRight: Radius.circular(10), 
                                        ),
                                        color: Colors.black87
                                      ),
                                      height: 50,
                                      message: 'You got this Deal from admin as a Benefit',
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top:10,left: 0),
                                            decoration: BoxDecoration(
                                            color: secondary,
                                            shape: BoxShape.circle
                                          ),
                                          padding: EdgeInsets.all(5),
                                          
                                          child: Center(
                                            child:Icon(FontAwesome.info,color: Colors.black87,size: 15,)
                                  ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    widget.coupon.couponImg,
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text('Qty',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondary,
                                      fontSize:8
                                    ),),
                                    Text('05',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:13
                                    ),)
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                  SizedBox(height:8),
                  Center(
                      child: Container(
                        margin: EdgeInsets.only(top:8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            
                            
                            Text(widget.coupon.dealBy,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:14
                            ),),
                            Text(' VIEW PROFILE',style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: secondary,
                                fontSize:7,
                              ),),
                          ],
                        ),
                      ),
                  ),
                  Center(
                      
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(widget.coupon.couponDesc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            // fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                  ),

                  Padding(
                      padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.all(8),
                            
                            child: Center(
                              child: Image.asset("images/orders/phone.png",height: 23,width: 23,fit: BoxFit.fill,)
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('AKOTA BRIDGE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text(' BRANCH',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondary,
                                  fontSize: 9,
                                  // fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.all(10),
                            
                            child: Center(
                              child: Image.asset("images/orders/loc.png",height: 22,width: 22,fit: BoxFit.fill,)
                            ),
                          ),
                        ],
                      ),
                  )
                  
                  
                ],

              ),
                    ),
                  Container(
                        color: secondary,
                        width: MediaQuery.of(context).size.width,
                        height: 25,
                        child: Container(
                          margin: EdgeInsets.only(left: 15,right:15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('03:00 PM - 04:00 PM ',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: darkPrimary,
                                            fontSize:10,
                                            
                                          ),),
                                   Text(' TIMING',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize:6
                                  ),),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('HAPPY HOUR ',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: darkPrimary,
                                    fontSize:10
                                  ),),
                                  Text(' TYPE',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize:6
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                  
                  Column(
                    children: <Widget>[
                      
                      Container(
                        height: 66,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                   Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Expiry',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondary,
                                      fontSize:9
                                    ),),
                                    Text('12 May,2020',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:10
                                    ),)
                                  ],
                                ),
                                 SizedBox(height:10),
                                 Text('Terms & Conditions',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondary,
                                      fontSize:10
                                    ),)
                                  
                                ],
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                   Text('Deal Code',style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: secondary,
                                     fontSize:9
                                   ),),
                                  SizedBox(height:5),
                                   Container(
                                     padding: EdgeInsets.all(5),
                                     decoration: BoxDecoration(
                                       color: secondary,
                                       borderRadius: BorderRadius.circular(5),

                                     ),

                                     child: Center(
                                       child:Text('787366233',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: darkPrimary,
                                          fontSize:15
                                        ),), 
                                     ),
                                   )
                                   
                                 
                                  
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),

                   
            ],
          ),
          
        ),

      )))),
    );
  }
}




// Used DEALsssss


class UsedOrderCard extends StatefulWidget {
   final Coupon coupon;
  UsedOrderCard({
    this.coupon
  });
  @override
  _UsedOrderCardState createState() => _UsedOrderCardState();
}

class _UsedOrderCardState extends State<UsedOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipPath(
        clipper: TicketClipper(10.0),
        child: Material(
          elevation: 0.0,
          shadowColor: Color(0x30E5E5E5),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom:0.0,left: 4,right: 4,),
            child: ClipPath(
              clipper: TicketClipper(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: new DecorationImage(
                  image: new AssetImage('images/orders/back.png'),
                  fit: BoxFit.fill,
                ),
                ),
                height: 320,
                width: 100,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Container(
                          margin: EdgeInsets.only(top:0, left: 8,right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                             Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('OFFER GOT ON',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondary,
                                      fontSize:8
                                    ),),
                                    Text('12 May, 2020',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:11
                                    ),),
                                    Tooltip(

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomLeft:Radius.circular(10),
                                          bottomRight: Radius.circular(10), 
                                        ),
                                        color: Colors.black87
                                      ),
                                      height: 50,
                                      message: 'You got this Deal from admin as a Benefit',
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top:10,left: 0),
                                            decoration: BoxDecoration(
                                            color: secondary,
                                            shape: BoxShape.circle
                                          ),
                                          padding: EdgeInsets.all(5),
                                          
                                          child: Center(
                                            child:Icon(FontAwesome.info,color: Colors.black87,size: 15,)
                                  ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    widget.coupon.couponImg,
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text('Qty',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondary,
                                      fontSize:8
                                    ),),
                                    Text('05',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:13
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  SizedBox(height:8),
                   Center(
                      child: Container(
                        margin: EdgeInsets.only(top:8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            
                            
                            Text(widget.coupon.dealBy,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:14
                            ),),
                            Text(' VIEW PROFILE',style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: secondary,
                                fontSize:7,
                              ),),
                          ],
                        ),
                      ),
                  ),
                  Center(
                      
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(widget.coupon.couponDesc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            // fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                  ),

                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('AKOTA BRIDGE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text(' BRANCH',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondary,
                                  fontSize: 9,
                                  // fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                         
                        ],
                      ),
                  ),
                  
                   Padding(
                    padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: (){

                          showGeneralDialog(barrierColor: Colors.black.withOpacity(0.5),
                            transitionBuilder: (context, a1, a2, widget) {
                              return Transform.scale(
                                scale: a1.value,
                                child: Opacity(
                                  opacity: a1.value,
                                  child: Dialog(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      height: 300,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Text('Review Merchant',style: TextStyle(
                                                fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                              ),),

                                              InkWell(
                                                onTap: (){
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(Icons.cancel,size: 35,color: primary,))
                                            ],
                                          ),
                                          SizedBox(height:20),
                                          Form(
                                            child: Column(
                                              children: <Widget>[
                                                RatingBar(
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                    // ignoreGestures: true,
                                                    tapOnlyMode: true,
                                                    itemSize: 25,
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

                                                  SizedBox(height:20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Text('Message:',style: TextStyle(
                                                              fontSize: 20,
                                                                fontWeight: FontWeight.bold
                                                            ),),
                                                      ],
                                                    ),
                                                     Container(
                                                       height: 100,
                                                       color: Color.fromRGBO(76, 167, 223,0.19),
                                                      margin: EdgeInsets.only(right:10,left: 10),
                                                      child: new TextField(
                                                        maxLines: null,
                                                        textAlign: TextAlign.start,
                                                        decoration: new InputDecoration(
                                                          isDense: true,
                                                          // contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                                                            
                                                            filled: true,
                                                            
                                                            hintStyle: new TextStyle(
                                                             
                                                              fontSize: 12,
                                                              color: Colors.grey[800]),
                                                            hintText: "Give your meassage",
                                                            fillColor: Color.fromRGBO(76, 167, 223,0.16),),
                                                      ),
                                                    ),
                                                    SizedBox(height:10),

                                                    InkWell(
                                                        onTap: (){
                                                          showDialog(
                                                            context: context,
                                                            builder: (BuildContext context){
                                                              return Dialog(
                                                                insetAnimationDuration: Duration(seconds: 20),
                                                                insetAnimationCurve: Curves.bounceInOut,
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(10)
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Container(
                                                                  height: MediaQuery.of(context).size.height*0.3,
                                                                  child: Column(
                                                                    children: <Widget>[
                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        children: <Widget>[
                                                                          GestureDetector(
                                                                            onTap: (){
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child: Icon(Icons.cancel,size: 30,color: primary,))
                                                                        ],
                                                                      ),

                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: <Widget>[
                                                                          Image.asset('images/profileicon/confirm.png',height:50,width:50,fit:BoxFit.fill)
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: <Widget>[
                                                                          Text('Saved',
                                                                          style: TextStyle(
                                                                            fontSize: 20,fontWeight: FontWeight.bold,
                                                                            color: Colors.black87,
                                                                          ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      SizedBox(height: 20,),

                                                                      Center(
                                                                        child: Text('Yor review about merchant is saved.',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                          fontSize: 16,fontWeight: FontWeight.bold,
                                                                          color: Colors.black87,
                                                                        ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                            ),
                                                                ),
                                                              );
                                                            }
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            color: Color.fromRGBO(253,210,8,1.0),
                                                          ),
                                                          height: 40,
                                                          width: 40,
                                                          
                                                          child: Center(child: Icon(Icons.keyboard_arrow_right,size: 35,color:Colors.black87,)),
                                                        ),
                                                      )
                                              ],
                                            ),
                                          ),
                                        
                                        ],
                                      )
                                    ),
                                  ),
                                ),
                              );
                            },
                            transitionDuration: Duration(milliseconds: 200),
                            barrierDismissible: true,
                            barrierLabel: '',
                            context: context,
                            pageBuilder: (context, animation1, animation2) {}
                            
                            );
                          },
                          child: Container(
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: secondary,
                            ),
                            padding: EdgeInsets.all(5),
                            
                            child: Center(
                              child: Text(
                                'REVIEW',
                                style: TextStyle(
                                  color:darkPrimary,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10
                                ),
                              ),
                            ),

                          ),
                        )
                      
                      ],
                    ),
                )
                  
                  
                ],

              ),
                    ),
                  Container(
                        color: secondary,
                        width: MediaQuery.of(context).size.width,
                        height: 25,
                        child: Container(
                          margin: EdgeInsets.only(left: 15,right:15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('03:00 PM - 04:00 PM',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: darkPrimary,
                                        fontSize:10,
                                        
                                      ),),
                              Text('HAPPY HOUR',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: darkPrimary,
                                fontSize:10
                              ),)
                            ],
                          ),
                        ),
                      ),
                  
                  Column(
                    children: <Widget>[
                      
                      Container(
                        height: 66,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                   Text('Expiry',style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: secondary,
                                     fontSize:9
                                   ),),
                                   Text('12 May,2020',style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white,
                                     fontSize:10
                                   ),),
                                 
                                ],
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                   Text('Redeemed',style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: secondary,
                                     fontSize:9
                                   ),),
                                  
                                    Text('12 May,2020',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:10
                                    ),)
                                   
                                 
                                  
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),

                   
            ],
          ),
          
        ),

      )))),
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
        Rect.fromCircle(center: Offset(0.0, size.height / 1.33), radius: radius));
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, size.height / 1.33), radius: radius));
        
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

