import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:couponzz/screens/homepage.dart';
import 'package:couponzz/screens/cart.dart';
import 'package:couponzz/screens/help.dart';
import 'package:couponzz/screens/profile.dart';

// class BottomApp extends StatefulWidget {
//   @override
//   _BottomAppState createState() => _BottomAppState();
// }

// class _BottomAppState extends State<BottomApp> {
//       final primary = Color.fromRGBO(76,167,223,1);

//     final secondary =  Color.fromRGBO(253,210,8,1.0);
//   int currentTab = 0; // to keep track of active tab index
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//         borderRadius: BorderRadius.only(
//         topRight: Radius.circular(10),
//         topLeft: Radius.circular(10),
//       ),
//         child: BottomAppBar(
//           color: primary,
//           shape: CircularNotchedRectangle(),
//           notchMargin: 6,
//           child: Container(
//             height: 50,
            
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     MaterialButton(
//                       minWidth: 20,
//                       onPressed: () {
//                         setState(() {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));// if user taps on this dashboard tab will be active
//                           currentTab = 0;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Image.asset("images/home-run 2.png",color: currentTab == 0 ?secondary : Colors.white, height: 20),
//                           Text(
//                             'Home',
//                             style: TextStyle(
//                               fontSize: 11,
//                               color: currentTab == 0 ? secondary : Colors.white
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     MaterialButton(
//                       // minWidth: 40,
//                       onPressed: () {
//                         setState(() {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
//                           currentTab = 1;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Badge(
//                             badgeColor: secondary,
//                             badgeContent: Text("5",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
//                             child: Image.asset("images/buy1.png", color: currentTab == 1 ? secondary : Colors.white, height: 20)
//                           ),
//                           Text(
//                             'Cart',
//                             style: TextStyle(
                              
//                               fontSize: 11,
//                               color: currentTab == 1 ? secondary : Colors.white
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),

//                 // Right Tab bar icons

//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     MaterialButton(
//                       // minWidth: 10,
//                       onPressed: () {
//                         setState(() {
//                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()));
//                           currentTab = 2;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Image.asset("images/question1.png", color: currentTab == 2 ? secondary : Colors.white, height: 20),
//                           Text(
//                             'Help',
//                             style: TextStyle(
                              
//                               fontSize: 11,
//                               color: currentTab == 2 ? secondary : Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     MaterialButton(
//                       minWidth: 5,
//                       onPressed: () {
//                         setState(() {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
//                           currentTab = 3;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Badge(
//                             badgeColor: secondary,
//                             badgeContent: Text("!",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
//                             child: Image.asset("images/user1.png", color: currentTab == 3 ? secondary : Colors.white, height: 20)
//                             ),
//                           Text(
//                             'User',
//                             style: TextStyle(
//                               fontSize: 11,
//                               color: currentTab == 3 ? secondary : Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 )

//               ],
//             ),
//           ),
//         ),


//       );
//   }
// }



class TopLevelWidget extends StatefulWidget {
  
 

  @override
  _TopLevelWidgetState createState() => new _TopLevelWidgetState();
}

class _TopLevelWidgetState extends State<TopLevelWidget> {
  int i = 0;
  var pages = [
    new HomePage(),
    new Cart(),
    new Help(),
    new Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pages[i],
      
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.photo_library),
            title: new Text('Blog'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            title: new Text('Library'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            title: new Text('Notifications'),
          ),
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}