import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';



class HDPoints extends StatefulWidget {
  @override
  _HDPointsState createState() => _HDPointsState();
}

class _HDPointsState extends State<HDPoints> {


  List<Transactions> transaction = [
    Transactions(transactionType: 'Promotion',date: '12/09/20',transactionDesc: 'Credited to HD Points',amount: '20'),
    Transactions(transactionType: 'Promotion',date: '12/09/20',transactionDesc: 'Credited to HD Points',amount: '20'),
    Transactions(transactionType: 'Redeemed',date: '12/09/20',transactionDesc: 'Credited to HD Points',amount: '20'),
    Transactions(transactionType: 'Redeemed',date: '12/09/20',transactionDesc: 'Credited to HD Points',amount: '20'),
    Transactions(transactionType: 'Redeemed',date: '12/09/20',transactionDesc: 'Credited to HD Points',amount: '20'),
    Transactions(transactionType: 'SignUp',date: '12/09/20',transactionDesc: 'Credited to HD Points',amount: '20'),
  ];

  _buildTransaction(){
    return Container(
      
      // height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context,index){
          return Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(transaction[index].transactionType,style: TextStyle(
                      fontSize: 11,
                      color:Colors.grey[600]
                    ),),
                    Text(transaction[index].date,style: TextStyle(
                      fontSize: 11,
                      color:Colors.grey[600]
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(transaction[index].transactionDesc,style: TextStyle(
                      fontSize: 13,
                      color:Colors.grey[400]
                    )),
                    Text(transaction[index].amount,style: TextStyle(
                      fontSize: 11,
                      color:Colors.grey[600]
                    ))
                  ],
                ),

                Divider()

              ],
            ),
          );
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
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
                              Container(
                                margin: EdgeInsets.only(top:18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'TOTAL AVAILABLE HD POINTS',
                                          style: TextStyle(
                                            color: primary,
                                           fontWeight: FontWeight.bold ,
                                           fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 7,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                           fontWeight: FontWeight.bold ,
                                           fontSize: 40,
                                          ),
                                        )
                                      ],
                                    ),

                                    SizedBox(height: 1,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Your total points are worth ',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                           fontWeight: FontWeight.w600 ,
                                           fontSize: 13,
                                          ),
                                        ),
                                        Icon(FontAwesome.rupee,size:15,color:Colors.grey[600]),

                                        Text('10',
                                        style:TextStyle(
                                            color: Colors.grey[600],
                                           fontWeight: FontWeight.w600 ,
                                           fontSize: 13,
                                          ),)
                                      ],
                                    ),

                                     SizedBox(height: 7,),
                                   Center(
                                     child: Container(
                                       margin: EdgeInsets.only(left:30),
                                       width: MediaQuery.of(context).size.width*0.80,
                                            child: Text(
                                              'You can pay upto 10% (may vary dusring the sale & promotion events) of your order valse through HD Pointd. Use them on the Payments Page dusring checkout',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                              //  fontWeight: FontWeight.bold ,
                                               fontSize: 10,
                                              ),
                                            ),
                                          ),
                                   ),

                                   Padding(
                                     padding: EdgeInsets.only(top:10,bottom: 8),
                                     child: Divider(thickness: 8,color:dividerColor),
                                   ),


                                   Padding(
                                     padding: EdgeInsets.only(left: 8),
                                     child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Refer Your Friends to Earn More',
                                            style: TextStyle(
                                              color: Colors.black54,
                                             fontWeight: FontWeight.bold ,
                                             fontSize:15,
                                            ),
                                          )
                                        ],
                                      ),
                                   ),

                                   Padding(
                                     padding: EdgeInsets.only(top:10,bottom: 8),
                                     child: Divider(thickness: 8,color: dividerColor),
                                   ),


                                   Padding(
                                     padding: EdgeInsets.only(left: 8),
                                     child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Transaction Logs',
                                            style: TextStyle(
                                              color: Colors.black,
                                             fontWeight: FontWeight.w600,
                                             fontSize:15,
                                            ),
                                          )
                                        ],
                                      ),
                                   ),


                                   Padding(
                                     padding: EdgeInsets.only(top:10,bottom: 2,left: 5,right: 5),
                                     child: Divider(color: Colors.grey,),
                                   ),


                                    Container(
                                      margin: EdgeInsets.only(bottom: 0),
                                      padding: EdgeInsets.only(left: 5,right: 5,top: 0,bottom: 0),
                                      child: _buildTransaction(),
                                    ),
                                  //   Padding(
                                  //    padding: EdgeInsets.only(top:0,bottom: 0,left: 5,right: 5),
                                  //    child: Divider(color: Colors.grey,),
                                  //  ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'View More',
                                          style: TextStyle(
                                            color: primary,
                                           fontWeight: FontWeight.bold ,
                                           fontSize: 13,
                                          ),
                                        )
                                      ],
                                    ),

                                    Divider(thickness: 8,color: dividerColor),


                                    ListTileTheme(
                                      dense: true,
                                      contentPadding: EdgeInsets.only(left: 8),
                                      child: ExpansionTile(
                                        title: Text(
                                             'Eligiblity,Membership,Accrual',
                                             style: TextStyle(
                                               color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize:15,
                                             ),
                                           ),
                                           children: <Widget>[
                                             Text('asduasadsaihsdiashdiahdsiadiahdsia')
                                           ],
                                      ),
                                    ),


                                    ListTileTheme(
                                      dense: true,
                                     contentPadding: EdgeInsets.only(left: 8),
                                      child: ExpansionTile(
                                        title: Text(
                                             'General Terms & Conditions',
                                             style: TextStyle(
                                               color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize:15,
                                             ),
                                           ),
                                           children: <Widget>[
                                             Text('asduasadsaihsdiashdiahdsiadiahdsia')
                                           ],
                                      ),
                                    ),
                                   
                                  ],
                                ),
                              )



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
                    Text("HD POINTS",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                   
                  ],
                ),

              ),
            ],
          ),
        ),
      )
    );
  }
}



class Transactions{
  String transactionType;
  String transactionDesc;
  String date;
  String amount;
  Transactions({
   this.transactionDesc,this.transactionType,this.date,this.amount
  });
}