import 'package:couponzz/screens/datasource.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flutter/material.dart';


class FAQS extends StatefulWidget {
  @override
  _FAQSState createState() => _FAQSState();
}

class _FAQSState extends State<FAQS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                // height: MediaQuery.of(context).size.height,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                            itemCount: DataSource.questionAnswers.length,
                            itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 2,right: 2,top: 6,bottom: 6),
                                  child: Card(
                                    elevation: 2,
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
                                                color: Colors.black54,
                                               fontWeight: FontWeight.bold ,
                                               fontSize:15,
                                              ),
                                        ),
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(DataSource.questionAnswers[index]['answer']),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                            }),
                              ),
                            ],
                          ),
                        ),
                    )
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
                    Text("FAQS",style: TextStyle(
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