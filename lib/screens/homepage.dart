
import 'package:couponzz/shared/common.dart';
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
  bool _currentUser =false;

  ScrollController _scrollController;
  bool _isOnTop = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _scrollToTop() {
    _scrollController.animateTo(_scrollController.position.minScrollExtent,
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
    setState(() => _isOnTop = true);
  }





  final primary = Color.fromRGBO(76,167,223,1);
    final secondary =  Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(currentUser: _currentUser),
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
           

            Padding(
              padding: const EdgeInsets.only(right:10.0,top:5),
              child: Container(
                height: 30,
                child: Badge(
                  padding: EdgeInsets.all(2),
                  position: BadgePosition(right: 0,bottom: 19),
                  badgeColor: Color.fromRGBO(253,210,8,1.0),
                  badgeContent: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8),),
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
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                      Text("24 ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                      Image.asset("images/menu/hd6.png",height: 15,width: 15,)
                    ],)
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
            controller: _scrollController,
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
                Padding(padding: const EdgeInsets.only(top:13.0,left:8.0,right: 8.0,bottom: 13),
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
                Container(
                  // width: MediaQuery.of(context).size.width,
                  child: CouponCardList()),
                AdBanner(),
                Padding(padding: const EdgeInsets.only(top:20.0,left:8.0,right: 8.0,bottom: 15),
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

                CouponCardList(),

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
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 0),
                  child: RecentStores(),
                ),

              SizedBox(height: 0.0),

              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 15.0,bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        _scrollToTop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(253,210,8,1.0),
                        ),
                        height: 50,
                        width: 50,
                        
                        child: Center(child: Icon(Icons.keyboard_arrow_up,size: 35,color:Colors.black87,)),
                      ),
                    )
                  ],
                ),
              )
              ],
            ),
            ),
        ),
      ),
       
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
    @required bool currentUser,
  }) : _currentUser = currentUser, super(key: key);

  final bool _currentUser;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
              Stack(
                children: <Widget>[
                  Container(
                    height: 170,
                    child: Image.asset(
                      "images/menu/menuback.png",
                      fit:BoxFit.fill
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:15),
                    child: Center(
                      child: Image.asset(
                      "images/menu/menuLogo.png",
                      height: 80,
                      width: 80,
                      fit:BoxFit.fill
                    ),
                      ),
                  ),

                 _currentUser ? Positioned(
                    bottom: 10,
                    left: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              
                              child:Column(
                                children: <Widget>[
                                  Text("Welcome ",
                                  
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black87
                                  ),),
                                  Text("Purusharth",
                                  
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black87
                                  ),),
                                ],
                              ),

                            
                            ),
                            SizedBox(width: 30,),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle
                              ),
                              child: Image.asset('images/menu/defaultImg.png',fit: BoxFit.fill,height: 30,width: 30,),
                            )
                          ],
                        ),
                      ),
                    ),
                  ) : Positioned(
                    bottom: 10,
                    left: 60,
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("LOGIN",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                            ),),
                            SizedBox(width:10),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black87,
                              ),
                              
                              child: Image.asset("images/menu/enter1.png",fit: BoxFit.fill,
                              
                              height: 30,
                              width: 30,),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Padding(
               padding: const EdgeInsets.only(left:15.0,top: 8.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                      _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/hd1.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Food Deals') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                      _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/hd2.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Fashion Deals') ,
                     
                  ],
                ),
              ),
              Divider(),
              

              Padding(
               padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                      _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/hd3.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Other Deals') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                      _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/hd5.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Reward Benefits') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                       _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/order.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Orders') ,
                     
                  ],
                ),
              ),
              Divider(),
              

              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                       _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/heart.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Wishlist') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                       _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/hdd.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('HD Points') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                       _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/share.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Refer & Earn') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                      _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/faq.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Faqs') ,
                     
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left:15.0,top: 2.0,bottom: 2.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                      _currentUser ?Image.asset("images/menu/hd6.png",height: 20,width: 20,):Image.asset("images/menu/membership.png",height: 20,width: 20,),
                      SizedBox(width:10),
                    Text('Gold Membership') ,
                     
                  ],
                ),
              ),
              Divider(),
              SizedBox(height:65),
             _currentUser? Container(
                height: 40,
                color: Color.fromRGBO(253,210,8,1.0),
               child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("LOGOUT",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),),
                    ),
                    SizedBox(width:20),
                    Image.asset("images/menu/arrowmenu.png",fit: BoxFit.fill,
                    
                    height: 20,
                    width: 20,)
                  ],
                )
              ):Container()
            ],
          ),
        ),
      ),
    );
  }
}




    



class RecentStores extends StatefulWidget {
  @override
  _RecentStoresState createState() => _RecentStoresState();
}

class _RecentStoresState extends State<RecentStores> {
  List<RecentStoreClass> recent = [
    RecentStoreClass(img: "images/store1.png",strName: "DesiChef Kitchen"),
    RecentStoreClass(img: "images/store2.png",strName: "William John's Pizza"),
    RecentStoreClass(img: "images/store3.png",strName: "Christmas Gift's"),
    RecentStoreClass(img: "images/store4.png",strName: "Laziz Pizza"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.2,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: recent.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(left:4.0,top: 20,right: 4.0),
            child: Container(
              width: MediaQuery.of(context).size.width/4.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(recent[index].img, height: 70,width: 70,),
                  SizedBox(height:5),
                  Center(
                    child: Text(recent[index].strName,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 11,

                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}


class RecentStoreClass {
  final String img;
  final String strName;

  RecentStoreClass({
    this.img,
    this.strName
  });
}