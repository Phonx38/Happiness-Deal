

import 'package:couponzz/screens/datasource.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class ReferAndEarnScreen extends StatefulWidget {
  @override
  _ReferAndEarnScreenState createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {

  bool _showInvite = true;
  bool _showRewards = false;
  bool _showFaqs = false;

  List<Refferals> refferals = [
    Refferals(email: 'ashuu38@gmail.com',ordered: true,signedUp: true,rs: '100'),
    Refferals(email: 'ashuu38@gmail.com',ordered: true,signedUp: true,rs: '100'),
    Refferals(email: 'ashuu38@gmail.com',ordered: false,signedUp: true,rs: '100'),
    Refferals(email: 'ashuu38@gmail.com',ordered: false,signedUp: true,rs: '100'),
    Refferals(email: 'tripathi@gmail.com',ordered: false,signedUp: true,rs: '100'),
    Refferals(email: 'boom@gmail.com',ordered: false,signedUp: false,rs: '100'),
    Refferals(email: 'bang@gmail.com',ordered: false,signedUp: false,rs: '100'),
    Refferals(email: 'wadla@gmail.com',ordered: false,signedUp: false,rs: '100'),
  ];

 _buildInvite(){
   return Container(
     width: MediaQuery.of(context).size.width,
     child: Column(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(left: 8,right: 8),
           child: Row(
             children: <Widget>[
               Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width*0.70,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(213,230,245,1)
                 ),
                 
                 child: TextField(
                   
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical:13.0),
                      border:InputBorder.none,
                      hintText: 'Enter Your Refferal Code',
                      hintStyle: TextStyle(
                        fontSize: 12
                      )
                    ),
                  ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: MediaQuery.of(context).size.width* 0.20,
                   height: 30,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                  color: secondary,
                 ),
                   
                   child: Center(child: Text('Submit',style: TextStyle(
                     fontWeight: FontWeight.bold
                   ),)),
                 ),
               )
             ],
           ),
         ),
        SizedBox(height:10),
        Center(
          child: Text(
            'Enter your one time referal code, this code',
            style: TextStyle(
              color: Colors.grey[400],
            //  fontWeight: FontWeight.bold ,
              fontSize: 12,
            ),
          ),
        ),

        Center(
          child: Text(
            'input is valid once only.',
            style: TextStyle(
              color: Colors.grey[400],
            //  fontWeight: FontWeight.bold ,
              fontSize: 12,
            ),
          ),
        ),

  SizedBox(height:10),
        Center(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/referback.png',
                  height: 300,
                  width: 322,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:  Border.all(color: primary,width: 2)
                  ),
                  width: 150,
                  height: 28,
                  child: Center(
                    child: Text(
                      'Your Code: ANK029J',
                      style: TextStyle(
                        fontSize: 11
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/menu/watsapp.png'),
                SizedBox(height:4),
                Text('Whatsapp',style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[500]
                ),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/menu/fb.png'),
                SizedBox(height:4),
                Text('Facebook',style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[500]
                ),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/menu/messenger.png'),
                SizedBox(height:4),
                Text('Messenger',style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[500]
                ),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/menu/more.png'),
                SizedBox(height:4),
                Text('More',style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[500]
                ),)
              ],
            ),
          ],
        ),
        SizedBox(height:20),
         Center(
          child: Container(
            // margin: EdgeInsets.only(left:30),
            
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.black,
                   fontWeight: FontWeight.bold ,
                    fontSize: 18,
                  ),
                ),
              ),
        ),
        SizedBox(height:10),
        Center(
          child: InkWell(
            onTap: (){

            },
            child: Container(
              height: 30,
                   width: MediaQuery.of(context).size.width*0.70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(213,230,245,1),
                    border: Border.all(color:primary,width:1)
                   ),
              child: Center(
                child: Text('Copy Rerferral Link',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
              ),
            ),
          ),
        )

       ],

     ),
   );
 }

 _buildRewards(){
   return Padding(
     padding: const EdgeInsets.all(4.0),
     child: Column(
       children: <Widget>[
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             color:Colors.blueGrey,
           ),
          //  height: MediaQuery.of(context).size.height*0.20,
           width: MediaQuery.of(context).size.width,
           
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Text('Total Rewards:',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                    Icon(FontAwesome.rupee,size: 12,color: Colors.white,),
                    Text('500',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                  ],),
                ),

                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:8.0,top: 4),
                  child: Row(children: <Widget>[
                    Text('Pending: ',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                    Icon(FontAwesome.rupee,size: 12,color: Colors.white,),
                    Text('0',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:8.0,top: 4),
                  child: Row(children: <Widget>[
                    Text('Active: ',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                    Icon(FontAwesome.rupee,size: 12,color: Colors.white,),
                    Text('100',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                  ],),
                ),

                SizedBox(height:10),
                 Padding(
                  padding: const EdgeInsets.only(left:8.0,top: 4,bottom: 12.0),
                  child: Row(children: <Widget>[
                    Text('View your Happiness points ',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                    // Icon(FontAwesome.rupee,size: 12,color: Colors.white,),
                    Text(' Here',style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                  ],),
                ),
              ],
            ),

         ),

         SizedBox(height:15),
         Container(
           width: MediaQuery.of(context).size.width*0.5,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Expanded(
                      child: Divider(color: Colors.black87,)
                  ),       

                  Text(" Your Refferals ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400]
                  ),),        

                  Expanded(
                      child: Divider(color: Colors.black87,)
                  ),
              ]
        ),

          
         ),

        SizedBox(height:20),

        
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: refferals.length,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(refferals[index].email,style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesome.rupee,size:10,color:Colors.black87),
                          Text(refferals[index].rs,style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                                ),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height:8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                      Row(
                        children: <Widget>[
                          Icon(Icons.check,size:15,color: refferals[index].signedUp ? Colors.greenAccent:Colors.grey[300]),
                          Text('  Signed Up',style: TextStyle(
                                  color: refferals[index].signedUp ? Colors.greenAccent:Colors.grey[300],
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),)
                        ],
                      ),
                      SizedBox(width:10),
                         Expanded(
                        child: Divider(color: refferals[index].ordered ? Colors.greenAccent:Colors.grey[300],thickness: 1,)
                    ),
                    SizedBox(width:10),
                         Row(
                        children: <Widget>[
                          Icon(Icons.check,size:15,color: refferals[index].ordered ? Colors.greenAccent:Colors.grey[300]),
                          Text('  Ordered',style: TextStyle(
                                  color: refferals[index].ordered ? Colors.greenAccent:Colors.grey[300],
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold
                                ),)
                        ],
                      ),
                    ],
                  ),
                  Divider()
                ],
              ),
            );
          },
         )
         

       ],
     ),
   );
 }


 _buildFaqs(){
   return ListView.builder(
     shrinkWrap: true,
     physics: NeverScrollableScrollPhysics(),
   itemCount: DataSource.questionAnswers.length,
   itemBuilder: (context, index) {
       return Padding(
         padding: const EdgeInsets.only(left: 2,right: 2,top: 0,bottom: 0),
         child: Card(
           elevation: 0,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(5)
           ),
           child: ListTileTheme(
             dense: true,
             contentPadding: EdgeInsets.only(left: 8,right: 8),
             child: ExpansionTile(
               title: Text(
                 DataSource.questionAnswers[index]['question'],
                 style:TextStyle(
                       color: Colors.grey[700],
                       fontWeight: FontWeight.bold ,
                       fontSize:13,
                     ),
               ),
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text(DataSource.questionAnswers[index]['answer'],style:TextStyle(
                       color: Colors.black54,
                      //  fontWeight: FontWeight.bold ,
                       fontSize:12,
                     ),),
                 )
               ],
             ),
           ),
         ),
       );
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          child:Stack(
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

                    Container(
                       decoration: BoxDecoration(
                     
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
                      
                    ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                                  onTap: (){
                                setState(() {
                                  _showInvite = true;
                                  _showRewards  = false;
                                  _showFaqs = false;

                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border:Border(
                                    bottom: _showInvite ? BorderSide(color: Color.fromRGBO(2, 68, 118, 1),width: 2):BorderSide(color: Colors.grey,width: 1)
                                  )
                                ),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'INVITE',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: _showInvite ? Color.fromRGBO(2, 68, 118, 1):Colors.black54,
                                      
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
                                  _showInvite = false;
                                  _showRewards = true;
                                  _showFaqs = false;

                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border:Border(
                                    bottom: _showRewards ? BorderSide(color: Color.fromRGBO(2, 68, 118, 1),width: 2):BorderSide(color: Colors.grey,width: 1)
                                  )
                                ),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'REWARDS',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: _showRewards ? Color.fromRGBO(2, 68, 118, 1):Colors.black54,
                                      
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
                                  _showInvite = false;
                                  _showRewards  = false;
                                  _showFaqs = true;

                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border:Border(
                                    bottom: _showFaqs ? BorderSide(color: Color.fromRGBO(2, 68, 118, 1),width: 2):BorderSide(color: Colors.grey,width: 1)
                                  )
                                ),
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'FAQS',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: _showFaqs ? Color.fromRGBO(2, 68, 118, 1):Colors.black54,
                                      
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        
                      ],
                      ),
                    ),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top:10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white, 
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                              _showInvite ? _buildInvite():_showRewards ? _buildRewards() : _buildFaqs(),
                                ],
                              ),
                            ),
                        ),
                      )
                    ],
                  ),






              Positioned(
                top: 10,
                left: 10,
                width: MediaQuery.of(context).size.width*0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      
                        Card(
                          margin: EdgeInsets.only(top:0,left: 0),
                          elevation: 6.0,
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
                    Text("Enjoy Together",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                   
                  ],
                ),

              ),
            ],
          )
        ),
      ),
    );
  }
}





class Refferals{
  String email;
  bool signedUp;
  bool ordered;
  String rs;


  Refferals({this.email,this.signedUp,this.ordered,this.rs});
}