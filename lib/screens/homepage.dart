
import 'package:couponzz/widgets/carousel.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:couponzz/widgets/homeGridCatList.dart';
import 'package:flutter/material.dart';
import 'package:couponzz/widgets/horizontalAdBannerlist.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:couponzz/screens/hotDeals.dart';
import 'package:couponzz/screens/saveXtraDeal.dart';
import 'package:badges/badges.dart';

  


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final primary = Color.fromRGBO(76,167,223,1);
    final secondary =  Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        child: Container(
          width: 200,
          child: new Drawer(
            elevation: 10,
            child:  ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text("Dummy"),
                  accountEmail: Text("Dummy"),

                  currentAccountPicture: GestureDetector(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,color:Color.fromRGBO(239,12,95,1),),
                        
                        
                      ) ,
                    ),
                      decoration: new BoxDecoration(
                      color: primary,
                      ),
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Homepage') ,
                      leading : Icon(Icons.home,color: Color.fromRGBO(239,12,95,1)),
                    ),
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('My Account') ,
                      leading : Icon(Icons.person,color: Color.fromRGBO(239,12,95,1),),
                    ),
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Orders') ,
                      leading : Icon(Icons.shopping_basket,color: Color.fromRGBO(239,12,95,1),),
                    ),
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Shopping Cart') ,
                      leading : Icon(Icons.shopping_cart,color: Color.fromRGBO(239,12,95,1),),
                    ),
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Favourites') ,
                      leading : Icon(Icons.favorite,color: Color.fromRGBO(239,12,95,1)),
                    ),
                ),

                Divider(),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Settings') ,
                      leading : Icon(Icons.settings,color: Colors.lightBlue,),
                    ),
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('About') ,
                      leading : Icon(Icons.help,color: Colors.lightBlue,),
                    ),
                ),


              ],
            ),
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          
          iconTheme: new IconThemeData(color: Colors.white),
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
          elevation: 1.0,
          backgroundColor: primary,
          
          actions: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Stack(
            //     children: <Widget>[
            //       Icon(Icons.notifications,size: 25,color: Colors.white,),
            //        new Positioned(
            //       top: 0.0,
            //       right: 0.0,
            //       child: new Stack(
            //         children: <Widget>[
            //           new Icon(Icons.brightness_1,
            //               size: 15.0, color: Color.fromRGBO(253,210,8,1.0)),
            //           new Positioned(
            //             top: 0.5,
            //             right: 5.0,
            //             child: new Text("1",
            //                 textAlign: TextAlign.center,
            //                 style: new TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 10.0,
            //                     fontWeight: FontWeight.w500)),
            //           )
            //         ],
            //       ),
            //     )
            //     ],
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(right:10.0,top:10),
              child: Container(
                height: 30,
                child: Badge(
                  badgeColor: Color.fromRGBO(253,210,8,1.0),
                  badgeContent: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                  child: Icon(Icons.notifications),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                height: 10,
                width:60,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Center(
                    
                    child: RichText(
                      // textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                text:"24 ",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                  text:"H",style: TextStyle(color: primary,fontSize: 10,fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                  text:"D",style: TextStyle(color: Color.fromRGBO(253,210,8,1.0),fontSize: 10,fontWeight: FontWeight.bold)
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Feather.search,color:secondary,size: 25,),
            ),
                              
          ],
        ),
      ),

      body: Container(
        
        child: SafeArea(
          
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width ,
                        color: primary,
                        child: Card(
                          margin: EdgeInsets.only(top:0,bottom: 2,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                              ),
                          ),
                          elevation: 2.0,
                          color: secondary,
                          child: Container(
                            width: MediaQuery.of(context).size.width ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                              ),
                              color: Color.fromRGBO(253,210,8,1.0),
                            ),
                            margin: EdgeInsets.all(0),
                            
                            height: 65,
                            
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 0,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Container( 
                                      width: MediaQuery.of(context).size.width*0.50,
                                      child: Image.asset('images/logo2.png',
                                      fit: BoxFit.fill,)
                                    ),
                                  ),
                                  Container( 
                                    width: MediaQuery.of(context).size.width*0.30,
                                    child: Image.asset('images/loader.png',
                                    fit: BoxFit.fill,)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Stack(
                        children: <Widget>[
                          HomePageBg(screenHeight: MediaQuery.of(context).size.height* 0.30,color: primary,),
                          Container(
                            height: 210,
                            width: MediaQuery.of(context).size.width,
                            child: ImageCarousel()),
                        ],
                      ),
                    ],
                  ),
                ),
                
                

                Padding(padding: const EdgeInsets.only(top:13.0,left:8.0,right: 8.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: new Text('Categories', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),)),
                        
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: HomeGridCategories(),
                ),
                Padding(padding: const EdgeInsets.only(top:13.0,left:8.0,right: 8.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: new Text('Hot deals', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),)),
                        Container(child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TopDeal()));
                          },
                          child: new Text('View All', style: TextStyle(color: Colors.blue, ),)),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: CouponCardList()),
                ),
                AdBanner(),
                Padding(padding: const EdgeInsets.only(top:0.0,left:8.0,right: 8.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: new Text('SaveXtra deals', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),)),
                        Container(child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SaveXtraDeal()));
                          },
                          child: new Text('View All', style: TextStyle(color: Colors.blue, ),))
                          ,)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 0),
                  child: CouponCardList(),
                ),

                Padding(padding: const EdgeInsets.only(top:13.0,left:8.0,right: 8.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: new Text('Recently Visited Stores', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),)),
                        Container(child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TopDeal()));
                          },
                          child: new Text('View All', style: TextStyle(color: Colors.blue, ),)),)
                    ],
                  ),
                ),
              ],
            ),
            ),
        ),
      ),
       
    );
  }
}




    

