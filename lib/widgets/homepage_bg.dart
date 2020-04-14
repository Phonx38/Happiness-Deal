import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class HomePageBg extends StatelessWidget {
   final Color color;
  final screenHeight;

  const HomePageBg({Key key,@required this.screenHeight,@required this.color}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    final primary = Color.fromRGBO(2,68,119,1);
    final secondary =  Color.fromRGBO(253,210,8,1.0);
    final themeData = Theme.of(context);
    return ClipPath(
      clipper: WaveClipperTwo(),
            child: Container(
            decoration: BoxDecoration(
              color: color,
                      // gradient: LinearGradient(
                          
                      //     stops: [0.0,0.9999],
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight)
                      ),
              height: screenHeight ,   
              
            ),
          );
        }
      }
      
class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curvedStartPoint = Offset(0,size.height * 0.85);
    Offset curvedEndPoint = Offset(size.width ,size.height * 0.85);
    path.lineTo(curvedEndPoint.dx, curvedStartPoint.dy);
    path.quadraticBezierTo(size.width/2, size.height,  curvedEndPoint.dy,curvedStartPoint.dx);
    return path;
    
    
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}
