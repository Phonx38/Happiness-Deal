import 'package:badges/badges.dart';
import 'package:couponzz/screens/homepage.dart';
import 'package:couponzz/screens/cart.dart';
import 'package:couponzz/screens/help.dart';
import 'package:couponzz/screens/profile.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
    final primary = Color.fromRGBO(76,167,223,1);

    final secondary =  Color.fromRGBO(253,210,8,1.0);
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    HomePage(),
    Cart(),
    Help(),
    Profile()
    
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
         floatingActionButton: new FloatingActionButton(
           
          elevation: 1,
          
          backgroundColor:  Colors.black,
          child: Image.asset("images/Mia.png",fit: BoxFit.fill,), 
          onPressed: () {},
        ),
        floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
        child: BottomAppBar(
          color: primary,
          shape: CircularNotchedRectangle(),
          notchMargin: 6,
          child: Container(
            height: 50,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 20,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              HomePage(); // if user taps on this dashboard tab will be active
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("images/home-run 2.png",color: currentTab == 0 ?secondary : Colors.white, height: 20),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 11,
                              color: currentTab == 0 ? secondary : Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      // minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              Cart(); // if user taps on this dashboard tab will be active
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Badge(
                            badgeColor: secondary,
                            badgeContent: Text("5",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                            child: Image.asset("images/buy1.png", color: currentTab == 1 ? secondary : Colors.white, height: 20)
                          ),
                          Text(
                            'Cart',
                            style: TextStyle(
                              
                              fontSize: 11,
                              color: currentTab == 1 ? secondary : Colors.white
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      // minWidth: 10,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              Help(); // if user taps on this dashboard tab will be active
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("images/question1.png", color: currentTab == 2 ? secondary : Colors.white, height: 20),
                          Text(
                            'Help',
                            style: TextStyle(
                              
                              fontSize: 11,
                              color: currentTab == 2 ? secondary : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 5,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              Profile(); // if user taps on this dashboard tab will be active
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Badge(
                            badgeColor: secondary,
                            badgeContent: Text("!",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                            child: Image.asset("images/user1.png", color: currentTab == 3 ? secondary : Colors.white, height: 20)
                            ),
                          Text(
                            'User',
                            style: TextStyle(
                              fontSize: 11,
                              color: currentTab == 3 ? secondary : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}