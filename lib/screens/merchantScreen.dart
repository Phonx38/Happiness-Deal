import 'package:couponzz/shared/common.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class MerchantScreen extends StatefulWidget {
  @override
  _MerchantScreenState createState() => _MerchantScreenState();
}

class _MerchantScreenState extends State<MerchantScreen>{
  bool _showDeals = true;
  bool _showGallery = false;
  bool _showReviews = false;





 List<Reviews> reviews = [
   Reviews(date: '12 Sep 2020',name: 'Ashu',
   image: 'images/shp1.jpg',
   desc:'Hey is defined as an expression of greeting similar to  or is a way to attract attention or express annoyance. ... When someone rudely bumps into you, this is an example of a time when you might say  to express your upset.'
   ),
   Reviews(date: '12 Sep 2020',name: 'Max',
   image: 'images/shp1.jpg',
   desc:'Hey is defined as an expression of greeting similar to  or is a way to attract attention or express annoyance. ... When someone rudely bumps into you, this is an example of a time when you might say  to express your upset.'
   ),
   Reviews(date: '12 Sep 2020',name: 'Rohan',
   image: 'images/shp1.jpg',
   desc:'Hey is defined as an expression of greeting similar to  or is a way to attract attention or express annoyance. ... When someone rudely bumps into you, this is an example of a time when you might say  to express your upset.'
   ),
   Reviews(date: '12 Sep 2020',name: 'Mack',
   image: 'images/shp1.jpg',
   desc:'Hey is defined as an expression of greeting similar to  or is a way to attract attention or express annoyance. ... When someone rudely bumps into you, this is an example of a time when you might say  to express your upset.'
   ),
   Reviews(date: '12 Sep 2020',name: 'Ashu',
   image: 'images/shp1.jpg',
   desc:'Hey is defined as an expression of greeting similar to  or is a way to attract attention or express annoyance. ... When someone rudely bumps into you, this is an example of a time when you might say  to express your upset.'
   )
 ];





 List<String> galleryImgs = [
   "images/merchant/merchantimg.png",
   "images/merchant/merchantimg.png",
   "images/merchant/merchantimg.png",
   "images/merchant/merchantimg.png",
   "images/merchant/merchantimg.png",
   "images/merchant/merchantimg.png",
   "images/merchant/merchantimg.png",
 ];




_buildReviews(){
  return Container(
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: reviews.length,
      itemBuilder: (_,index){
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            onTap: (){
              showGeneralDialog(barrierColor: Colors.black.withOpacity(0.5),
                transitionBuilder: (context, a1, a2, widget) {
                  return Transform.scale(
                    scale: a1.value,
                    child: Opacity(
                      opacity: a1.value,
                      child: Dialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 300,
                          width: MediaQuery.of(context).size.width*0.90,
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                 InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.cancel,color:primary,size:35))
                              ],),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new AssetImage(
                                            reviews[index].image)
                                    ))),
                                    SizedBox(width:10),
                                    Text(reviews[index].name,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),),
                                   
                                  ],
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RatingBar(
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                        ignoreGestures: true,
                                        tapOnlyMode: false,
                                        itemSize: 18,
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        
                                      ),


                                      Text(reviews[index].date,style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black54
                                      ),),
                                  ],
                                ),
                              ),

                              SizedBox(height:10),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    reviews[index].desc,
                                    
                                    style: TextStyle(
                                      fontSize: 13,
                                      color:Colors.grey[600]
                                    ),
                                  ),
                                ),
                              )

                            ],
                          )
                          
                        ),
                      ),
                    ),
                  );
                },
                transitionDuration: Duration(milliseconds: 200),
                barrierDismissible: true,
                barrierLabel: '',
                context: context,
                pageBuilder: (context, animation1, animation2) {}
                
                );



            },
            child: ReviewTile(
              name: reviews[index].name,
              image: reviews[index].image,
              desc: reviews[index].desc,
              date: reviews[index].date,
            ),
          ),
        );
      },
    ),
  );
}






 _buildGallery(){
   return Container(
     width: MediaQuery.of(context).size.width,
     child: GridView.builder(
       physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          
        crossAxisCount: 2,
        childAspectRatio: 2/1,
        ),
        itemCount: galleryImgs.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset(galleryImgs[index],width: 120,height: 100,fit: BoxFit.fill,),
            ),
          );
        },
          
     ),
   );
 }







  _buildDeals(){
    return CouponCardList();
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
               child: Image.asset('images/merchant/merchantback.png',fit: BoxFit.fill,)
              ),
             
             
              Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                           
                            color: Colors.transparent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            
                          ),
                      height: MediaQuery.of(context).size.height*0.07,
                    ),
                    
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top:10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                         
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Stack(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                              height: MediaQuery.of(context).size.height*0.30,
                                              width: MediaQuery.of(context).size.width ,
                                              child: Image.asset("images/merchant/merchantimg.png",fit: BoxFit.fill,),
                                            ),

                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white,width: 10),
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new AssetImage(
                                                  'images/shp1.jpg')
                                        )
                                              
                                          ),
                                          

                                        ),
                                    ),
                                
                                    ],
                                  ),
                            
                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Veg/Non-Veg",style: TextStyle(
                                            color: Colors.black54,
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:8,bottom: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.menu,color: primary,size: 20,),
                                        SizedBox(width: 5,),
                                        Text("Food",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87
                                        ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,

                                      children: <Widget>[
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2),
                                            color:Colors.lightGreen
                                          ),
                                          child: Center(
                                            child: Text("4.6",style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                  ),),
                                          ),
                                        ),
                                        SizedBox(width:3),
                                    RatingBar(
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                      tapOnlyMode: false,
                                      itemSize: 18,
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      
                                    ),
                                      ],
                                    ),
                                    
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Divider(thickness: 10,color: Colors.grey[200],),


                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                     RichText(
                                      text: new TextSpan(
                                        text: 'Business in',
                                        style: TextStyle(
                                           color: Colors.black,
                                           fontFamily: 'Montserrat-Medium',
                                            fontSize: 12
                                          ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                              text: ' Restaurant *',
                                              style: TextStyle(
                                                 color: Colors.black,
                                                 fontFamily: 'Montserrat-Medium',
                                                  fontWeight: FontWeight.bold,
                                            fontSize: 12
                                          ),
                                          )
                                        ],
                                      ),
                                    ),

                                    RichText(
                                      text: new TextSpan(
                                        text: 'Established in',
                                        style: TextStyle(
                                           color: Colors.black,
                                            fontFamily: 'Montserrat-Medium',
                                            fontSize: 12
                                          ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                              text: ' 1998 *',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Montserrat-Medium',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12
                                          ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:15,bottom: 15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.95,
                                  height: MediaQuery.of(context).size.height*0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primary,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(13.0),
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset("images/merchant/website.png",height: 20,width: 20,fit: BoxFit.fill,),
                                                SizedBox(height:2),
                                                Text("Website",style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13
                                                ),)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.06,
                                        child: VerticalDivider(
                                          thickness: 2,
                                          color:secondary,
                                          )),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(13.0),
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset("images/phone1.png",height: 20,width: 20,fit: BoxFit.fill,),
                                                SizedBox(height:2),
                                                Text("Call",style:TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13
                                                ),)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.06,
                                        child: VerticalDivider(
                                          thickness: 2,
                                          color:secondary,
                                          )),
                                      Expanded(
                                        child: InkWell(
                                          onTap: (){

                                            
              
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Image.asset("images/location.png",height: 20,width: 20,fit: BoxFit.fill,),
                                                  SizedBox(height:2),
                                                  Text("Location",style:TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                             
                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:10,bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Schedule",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12

                                            ),),

                                        Text("Open on- Mon,Tue,Wed,Thu,Fri",style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12

                                            ),),
                                      ],
                                    ),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Text("Timing",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,


                                            ),),

                                        Text("5:00 AM - 10:00PM",style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12,
                                          

                                            ),),
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              Divider(thickness: 10,color: Colors.grey[200],),

                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text('About',style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                ),
                              ),
                              

                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0,top:10,bottom: 10),
                                child: Text('We are baroda based merchant we have 3 outlets, we are groing at good speed. We are baroda based merchant we have 3 outlets, we are groing at good speed. We are baroda based merchant we have 3 outlets, we are groing at good speed.',style: TextStyle(
                                  color:Colors.grey[600],
                                  fontSize: 11
                                ),),
                              ),

                            Divider(thickness: 10,color: Colors.grey[200],),

                            Padding(
                              padding: const EdgeInsets.only(left:5.0,right:5.0,top:5,bottom: 10),
                              
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      child: InkWell(
                                            onTap: (){
                                          setState(() {
                                            _showDeals = true;
                                            _showGallery  = false;
                                            _showReviews = false;

                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border(
                                              bottom: _showDeals ? BorderSide(color: Color.fromRGBO(2, 68, 118, 1),width: 2):BorderSide(color: Colors.grey,width: 2)
                                            )
                                          ),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              'Deals',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: _showDeals ? Color.fromRGBO(2, 68, 118, 1):Colors.grey,
                                                
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                      child: InkWell(
                                            onTap: (){
                                          setState(() {
                                            _showDeals = false;
                                            _showGallery  = true;
                                            _showReviews = false;

                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border(
                                              bottom: _showGallery ? BorderSide(color: Color.fromRGBO(2, 68, 118, 1),width: 2):BorderSide(color: Colors.grey,width: 2)
                                            )
                                          ),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              'Gallery',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: _showGallery ? Color.fromRGBO(2, 68, 118, 1):Colors.grey,
                                                
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  
                                  Expanded(
                                      child: InkWell(
                                            onTap: (){
                                          setState(() {
                                            _showDeals = false;
                                            _showGallery  = false;
                                            _showReviews = true;

                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:Border(
                                              bottom: _showReviews ? BorderSide(color: Color.fromRGBO(2, 68, 118, 1),width: 2):BorderSide(color: Colors.grey,width: 2)
                                            )
                                          ),
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              'Reviews',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: _showReviews ? Color.fromRGBO(2, 68, 118, 1):Colors.grey,
                                                
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  
                                ],
                              ),
                            ),


                            //BUILDING WIDGETS
                            SizedBox(height:10),
                            _showDeals ? _buildDeals():_showGallery ? _buildGallery() : _buildReviews(),

                            
                            ], 
                          ),
                        ),  
                    ),
                  ), 
                ],
              ),



              // APPBAR BACK ICON
               Positioned(
                top: 10,
                left: 10,
                width: MediaQuery.of(context).size.width*0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      
                        Card(
                          margin: EdgeInsets.only(top:0,left: 0),
                          elevation: 4.0,
                          color: primary,
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,),
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            }  
                          ),
                    ),
                    SizedBox(width: 10,),
                    Text('William John\'s Pizza',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                  Spacer(),
                   Text("(3 Outlets)",style: TextStyle(fontSize: 13,color: Colors.black,fontFamily: "Montserrat-Medium"))

                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}










class ReviewTile extends StatefulWidget {
  String name;
  String date;
  String desc;
  String image;

  ReviewTile({
    this.name,
    this.date,
    this.desc,
    this.image
  });

  @override
  _ReviewTileState createState() => _ReviewTileState();
}

class _ReviewTileState extends State<ReviewTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
           color: Color.fromRGBO(240,244,247,1),
        ),
       
        width: MediaQuery.of(context).size.width * 0.80,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage(
                        widget.image)
                )
                    
                  ),
                  

                ),

              ),
              SizedBox(height: 20,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.name,style:TextStyle(
                              fontWeight: FontWeight.bold,

                            )),

                            Text(widget.date,style:TextStyle(
                              fontWeight: FontWeight.bold,
                              
                            )),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           RatingBar(
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                              ignoreGestures: true,
                              tapOnlyMode: false,
                              itemSize: 10,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              
                            ),
                        ],
                      ),
                      SizedBox(height:10),
                      Expanded(
                        child: Text(
                          widget.desc,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600]
                            
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}


class Reviews{
  String name;
  String date;
  String desc;
  String image;

  Reviews({
    this.name,
    this.date,
    this.desc,
    this.image
  });
}