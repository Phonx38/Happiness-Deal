
import 'package:badges/badges.dart';
import 'package:couponzz/shared/common.dart';
import 'package:couponzz/shared/searchbar.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:couponzz/widgets/subCategory.dart';
import 'package:flutter/material.dart';



class SaveXtraDeal extends StatefulWidget {
  @override
  _SaveXtraDealState createState() => _SaveXtraDealState();
}

class _SaveXtraDealState extends State<SaveXtraDeal> {
  final primary = Color.fromRGBO(76,167,223,1);
  final secondary =  Color.fromRGBO(253,210,8,1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
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
                            child: Icon(Icons.sort,size: 20,),
                          ),
                          onTap: () => Scaffold.of(context).openDrawer(),
                          // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                          
                        ),
                  ),
                ),
              ),
              actions: <Widget>[
                Padding(
              padding: const EdgeInsets.only(right:25.0,top:10),
              child: Container(
                height: 30,
                child: Badge(
                    badgeColor: Color.fromRGBO(253,210,8,1.0),
                    badgeContent: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                    child: Icon(Icons.notifications),
                  ),
                ),
              ),

              ],
        ),
      ),
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
                        HomePageBg(screenHeight: MediaQuery.of(context).size.height* 0.30,color:primary),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Find  Top SaveXtra Deals in your city",maxLines: 2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
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
                            
                                      
                            ],
                      ),
                        ),
                        
                      ],
                    ),
                    Padding(padding: const EdgeInsets.only(top:13.0,left:8.0,right: 8.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Container(child: new Text('SaveXtra deals', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),)),
                         
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