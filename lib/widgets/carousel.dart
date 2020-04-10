import 'package:carousel_slider/carousel_slider.dart';

import 'package:couponzz/shared/common.dart';

import 'package:flutter/material.dart';



  final List<String> imgList =  [
              'images/carou1.jpg',
              'images/carou2.jpg',
              'images/carou3.png',
             
            ];

final List child = map<Widget>(
  imgList,
  (index, i) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: InkWell(
        onTap: (){
          

        },
        child: Container(
          height:200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(62, 168, 174, 201),
                offset: Offset(0,9),
                blurRadius: 14,

              ),
            ]
          ),
          child: Material(
            color: Colors.transparent,
            shadowColor: Color(0x30E5E5E5),
            elevation: 1.0,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              clipBehavior: Clip.antiAlias,
              elevation: 4.0,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                   i,
                    // color: secondary,
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 300,
                      width: 400,

                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Container(),
                        ),
                    ),
                  ),
                  // Positioned( 
                  //   bottom: 110,
                  //   left: 5,
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left:8.0,),
                  //       child: RichText(
                  //         text: TextSpan(
                  //           children: [
                  //             TextSpan(
                  //             text:"M Loving It!!",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold,)
                  //           )
                  //           ]
                  //         ),
                  //       ),
                  //     ),
                  //   )
                  // ),
                  // Positioned( 
                  //   bottom: 75,
                  //   left: 5,
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left:8.0,),
                        
                  //     ),
                  //   )
                  // ),
                  // Positioned( 
                  //   bottom: 75,
                  //   left: 5,
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left:8.0,),
                  //       child: RichText(
                  //         text: TextSpan(
                  //           children: [
                  //             TextSpan(
                  //             text:"HappyDeal by:",style: TextStyle(letterSpacing: 1.0,fontFamily: 'Pacifico-Regular',fontSize: 13,color: Colors.red[300],fontWeight: FontWeight.bold,)
                  //           )
                  //           ]
                  //         ),
                  //       ),
                  //     ),
                  //   )
                  // ),
                  // Positioned( 
                  //   bottom: 55,
                  //   left: 5,
                  //   child: Align(
                  //     alignment: Alignment.bottomLeft,
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left:8.0,),
                  //       child: RichText(
                  //         text: TextSpan(
                  //           children: [
                  //             TextSpan(
                  //             text:"Dominoess",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,)
                  //           )
                  //           ]
                  //         ),
                  //       ),
                  //     ),
                  //   )
                  // ),
                  
                  
                  
                ],
              ),
            ),
          ),
        ),
      ),
      );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}





class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _current = 0;





  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          viewportFraction: 0.9,
          height: 190,
          items: child,
          pauseAutoPlayOnTouch: Duration(seconds:1),
          autoPlay: true,
          aspectRatio: 2.0,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 190.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? secondary: primary
                  ),
                ),
              );
            }),
          )
        )
      ]
    );
  }
}

