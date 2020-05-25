import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';



class MerchantCard extends StatefulWidget {
  @override
  _MerchantCardState createState() => _MerchantCardState();
}

class _MerchantCardState extends State<MerchantCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          padding: EdgeInsets.all(8),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:  Color(0xffF0F4F7),
          ),
         
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/shp1.jpg",height: 80,width: 80,fit: BoxFit.fill,))),
              SizedBox(width:20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Dominoes Pizza',style: TextStyle(
                    color: darkPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          SizedBox(width:5),
                          Text('4.5',style: TextStyle(
                          color: primary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                    ),)
                        ],
                      ),
                      
                      
                    ],
                  ),
                   SizedBox(height:5),
                  Text('Ahemedabad',style: TextStyle(
                        color: Colors.grey[600],
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}