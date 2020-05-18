import 'dart:async';

import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';



class Membership extends StatefulWidget {
  @override
  _MembershipState createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  @override

  _buildBasic(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 300,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: new DecorationImage(
          image: new AssetImage('images/orders/mem1.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('BASIC PLAN',style: TextStyle(
                fontSize: 22,
                color: Colors.grey[200],
                fontWeight: FontWeight.bold
              ),),
              Row(
                children: <Widget>[
                  Icon(FontAwesome.rupee,color: Colors.white,size: 25,),
                  SizedBox(width:5),
                  Text('100',style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[200],
                    fontWeight: FontWeight.bold
                  ),),
                ],
              )

          ],
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 
                  Text('For 1 month only',style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[200],
                    // fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
              width: MediaQuery.of(context).size.width * 50,
              child: Text(
                'You will get 10 HD Points everytime your referal will buy coupon',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold
                    ),
              ),
            ),

             SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
              width: MediaQuery.of(context).size.width * 50,
              child: Text(
                'You will get a free Deal when 3 of your referal will buy Deal',
                textAlign: TextAlign.center,
                
                style: TextStyle(
                  
                      fontSize: 12,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold
                    ),
              ),
            ),
            SizedBox(height:35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 220,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:secondary,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text(
                      'GET YOUR PLAN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height:10),
                  Center(
                    child: Text(
                        'TERMS & CONDITIONS',
                        style: TextStyle(
                          fontSize: 10,
                          color: secondary,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
        ],
      ),

      ),
    );
  }
  
  

_buildPremium(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 300,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: new DecorationImage(
          image: new AssetImage('images/orders/mem2.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('PREMIUM PLAN',style: TextStyle(
                fontSize: 22,
                color: Colors.grey[200],
                fontWeight: FontWeight.bold
              ),),
              Row(
                children: <Widget>[
                  Icon(FontAwesome.rupee,color: Colors.white,size: 25,),
                  SizedBox(width:5),
                  Text('100',style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[200],
                    fontWeight: FontWeight.bold
                  ),),
                ],
              )

          ],
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 
                  Text('For 1 month only',style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[200],
                    // fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
              width: MediaQuery.of(context).size.width * 50,
              child: Text(
                'You will get 10 HD Points everytime your referal will buy coupon',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold
                    ),
              ),
            ),

             SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
              width: MediaQuery.of(context).size.width * 50,
              child: Text(
                'You will get a free Deal when 3 of your referal will buy Deal',
                textAlign: TextAlign.center,
                
                style: TextStyle(
                  
                      fontSize: 12,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold
                    ),
              ),
            ),
            SizedBox(height:35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 220,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:secondary,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text(
                      'GET YOUR PLAN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height:10),
                  Center(
                    child: Text(
                        'TERMS & CONDITIONS',
                        style: TextStyle(
                          fontSize: 10,
                          color: secondary,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
        ],
      ),

      ),
    );
  }
  

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
                              _buildBasic(),
                              _buildPremium(),
                              _buildBasic(),
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
                    Text("Membership",style: TextStyle(
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

