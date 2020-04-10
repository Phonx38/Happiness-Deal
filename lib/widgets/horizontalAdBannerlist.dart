import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdBanner extends StatefulWidget {
  @override
  _AdBannerState createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  final List<String> imgList =  [
              'images/refer.png',
              'images/shp2.jpg',
              'images/shp3.jpg',
             'images/shp4.jpg',
            ];
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      // autoPlayCurve: Curves.easeInOutBack,
      viewportFraction: 0.9,
      aspectRatio: 3.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: imgList.map(
        (url) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,             
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  url,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}