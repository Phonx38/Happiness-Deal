
import 'package:couponzz/shared/common.dart';
import 'package:couponzz/shared/searchbar.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:couponzz/widgets/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class CategoryDetail extends StatefulWidget {
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  final primary = Color.fromRGBO(2,68,119,1);


    

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
    // floatingActionButton: new FloatingActionButton(
    //   heroTag: "two",
    //   elevation: 1,
    //   backgroundColor:  primary,
    //   child: Icon(Feather.home,color: secondary), onPressed: () {  
    //   },
    // ),
      floatingActionButton: new FloatingActionButton(
      heroTag: "one",
      elevation: 1,
      backgroundColor:  primary,
      child: Icon(Feather.filter,color: secondary), onPressed: (){
        _bottomfilter(context);
              }
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
                                        child: Text("Find best food deals in your city",maxLines: 2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
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
        
        void _bottomfilter(BuildContext context) {
          showModalBottomSheet(context: context, builder: (BuildContext context){
            return Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                children: <Widget>[
                  Text("Filter",style: TextStyle(
                    fontSize: 20.0
                  ),)
                ],
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          );

          
}



