
import 'package:couponzz/shared/searchbar.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:couponzz/widgets/subCategory.dart';
import 'package:flutter/material.dart';



class TopDeal extends StatefulWidget {
  @override
  _TopDealState createState() => _TopDealState();
}

class _TopDealState extends State<TopDeal> {
  final primary = Color.fromRGBO(76,167,223,1);
  final secondary =  Color.fromRGBO(253,210,8,1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Stack(
          children: <Widget>[
            
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children:<Widget>[ 
                        HomePageBg(screenHeight: MediaQuery.of(context).size.height,color:primary),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                IconButton(
                                 icon: Icon(Icons.arrow_back_ios,color:Colors.white,),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  ),
                                Spacer(),
                                
                              Icon(Icons.notifications,color:Colors.white,size: 25,),
                              
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Find  Top Happy Deals in your city",maxLines: 2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left:12.0,right: 12.0,top:2),
                                child: SearchField()
                              ),

                              Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: SubCategories(),
                            ),
                            SingleChildScrollView(child: Container(child: Divider(color: Colors.grey,))),
                                      
                            ],
                      ),
                        ),
                        
                      ],
                    ),
                    Padding(padding: const EdgeInsets.only(top:13.0,left:8.0,right: 8.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Container(child: new Text('Hot deals', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),)),
                           Container(child: new Text('View All', style: TextStyle(color: Colors.blue, ),),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(child: CouponCardList(),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}