import 'dart:io';

import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:couponzz/screens/homepage.dart';
import 'package:couponzz/shared/common.dart';
import 'package:flat_icons_flutter/icon_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:wc_form_validators/wc_form_validators.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   String firstName;
   String lastName;
    int mobileNo;
    int pincode;
   final _formKey = GlobalKey();

  bool _currentUser =false;
  Color textline = Color.fromRGBO(2,68,119,1);

    List gender=["Male","Female"];

  String select;

 Row addRadioButton(int btnValue, String title) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Radio(
      activeColor: Colors.black87,
      value: gender[btnValue],
      groupValue: select,
      onChanged: (value){
        setState(() {
          print(value);
          select=value;
        });
      },
    ),
    Text(title)
  ],
);
 }


   String _selectedDate = 'Tap to select date';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime.now(),
    );
    if (d != null)
      setState(() {
        _selectedDate = new DateFormat.yMMMMd("en_US").format(d);
      });
  }
            //Use the above widget where you want the radio button
               





  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            )
          ),
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

      drawer: CustomDrawer(currentUser: _currentUser),


      body: SafeArea(
        child: Container(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                         'images/profileicon/proBack.png',
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0,left: 4,right: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top:15),
                              child: Center(
                                child: Image.asset(
                                "images/menu/menuLogo.png",
                                height: 70,
                                width: 70,
                                fit:BoxFit.fill
                              ),
                                ),
                            ),

                             Container(     
                                child:Column(
                                  children: <Widget>[
                                    Text("Welcome ",
                                    
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black87
                                    ),),
                                    Text("Purusharth",
                                    
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black87
                                    ),),
                                  ],
                                ),
                                ),
                            
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      getImage();
                                    },
                                    child: Container(
                                      
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle
                                        ),
                                        child: _image == null 
                                        ? Image.asset('images/menu/defaultImg.png',fit: BoxFit.fill,height: 50,width: 50,)
                                        :Image.file(_image,fit: BoxFit.fill,height: 50,width: 50,),
                                      ),
                                  ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Image.asset('images/menu/edit.png',height: 10,width: 10,fit: BoxFit.fill,))
                                ],
                              )


                          ],  
                        ),
                      ),

                    ],
                    
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                               Container(
                                width: 150,
                                child: TextFormField(
                                  validator: Validators.required('First name is required'),
                                  decoration: InputDecoration(
                                    focusedBorder:  new UnderlineInputBorder(
                                       borderSide: new BorderSide(color: secondary,width: 1)),
                                   enabledBorder: new UnderlineInputBorder(
                                       borderSide: new BorderSide(color: textline,width: 1)),
                                   contentPadding: EdgeInsets.all(0),
                                   isDense: true,
                                   
                                    hintText: "First Name",
                                    hintStyle: TextStyle(
                                      color: Colors.black54,
                                    
                                    )
                                  ),
                                  onSaved: (val){
                                    setState(() {
                                      firstName = val;
                                    });
                                  }
                                ),
                              ),



                              Container(
                                width: 150,
                                child: TextFormField(
                                  validator: Validators.required('Last name is required'),
                                  decoration: InputDecoration(
                                    focusedBorder:  new UnderlineInputBorder(
                                       borderSide: new BorderSide(color: secondary,width: 1)),
                                   enabledBorder: new UnderlineInputBorder(
                                       borderSide: new BorderSide(color: textline,width: 1)),
                                   contentPadding: EdgeInsets.all(0),
                                   isDense: true,
                                   
                                    hintText: "Last Name",
                                    hintStyle: TextStyle(
                                      color: Colors.black54,
                                    
                                    )
                                  ),
                                  onSaved: (val){
                                    setState(() {
                                      firstName = val;
                                    });
                                  }
                                ),
                                
                              ),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 20,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator:Validators.min(10, 'Invalid number'),
                                    decoration: InputDecoration(
                                      focusedBorder:  new UnderlineInputBorder(
                                         borderSide: new BorderSide(color: secondary,width: 1)),
                                     enabledBorder: new UnderlineInputBorder(
                                         borderSide: new BorderSide(color: textline,width: 1)),
                                     contentPadding: EdgeInsets.all(0),
                                     isDense: true,
                                     suffixIcon: Padding(
                                       padding: const EdgeInsets.all(0),
                                       child: Container(
                                          transform: Matrix4.translationValues(17.0, 0.0, 0.0),
                                         child: Image.asset('images/menu/tick.png',height: 10,width: 10,fit:BoxFit.none,)),
                                     ),
                                      hintText: "9876543234",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      
                                      )
                                    ),
                                    inputFormatters: <TextInputFormatter>[
                                        WhitelistingTextInputFormatter.digitsOnly
                                    ],
                                    onSaved: (val){
                                    setState(() {
                                      mobileNo = val as int;
                                    });
                                  }
                                  ),
                          ),
                        
                        SizedBox(height: 20,),
                          Container(
                            height: 20,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              validator: Validators.email('Invalid Email'),
                                    decoration: InputDecoration(
                                      focusedBorder:  new UnderlineInputBorder(
                                         borderSide: new BorderSide(color: secondary,width: 1)),
                                     enabledBorder: new UnderlineInputBorder(
                                         borderSide: new BorderSide(color: textline,width: 1)),
                                     contentPadding: EdgeInsets.all(0),
                                     isDense: true,
                                     suffixIcon: Padding(
                                       padding: EdgeInsetsDirectional.only(end:0),
                                       child: Container(
                                         transform: Matrix4.translationValues(15.0, 0.0, 0.0),
                                         child: Text("Verify",style: TextStyle(color:Colors.redAccent,fontSize: 12),)),
                                     ),
                                      hintText: "ashuuu38@gmail.com",
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                      
                                      )
                                    ),
                                  ),
                          ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                                decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                width: MediaQuery.of(context).size.height*0.70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("State",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),),
                              ),

                              Container(
                                    margin: EdgeInsets.only(right:10),
                                    child:Image.asset('images/profileicon/down.png',height:15,width:20,fit: BoxFit.fill,),)
                            ],
                          ),
                        ),

                        SizedBox(height: 10),
                        Container(
                          height: 40,
                                decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                width: MediaQuery.of(context).size.height*0.70,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("City",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                  ),

                                 Container(
                                    margin: EdgeInsets.only(right:10),
                                    child:Image.asset('images/profileicon/down.png',height:15,width:20,fit: BoxFit.fill,),)
                                ],
                              ),
                        ),

                         SizedBox(height: 10),
                        Container(
                          height: 40,
                                decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                width: MediaQuery.of(context).size.height*0.60,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Area",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(right:10),
                                    child:Image.asset('images/profileicon/down.png',height:15,width:20,fit: BoxFit.fill,),)
                                ],
                              ),
                        ),


                        SizedBox(height: 30,),
                          Container(
                            height: 20,
                            child: TextFormField(
                              validator: Validators.min(6, "Invalid Pincode"),
                                    decoration: InputDecoration(
                                      focusedBorder:  new UnderlineInputBorder(
                                         borderSide: new BorderSide(color: secondary,width: 1)),
                                     enabledBorder: new UnderlineInputBorder(
                                         borderSide: new BorderSide(color: textline,width: 1)),
                                     contentPadding: EdgeInsets.all(0),
                                     isDense: true,
                                     
                                      hintText: "Pin Code",
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                      
                                      )
                                    ),
                                    inputFormatters: <TextInputFormatter>[
                                        WhitelistingTextInputFormatter.digitsOnly
                                    ],
                                    onSaved: (val){
                                    setState(() {
                                      pincode = val as int;
                                    });
                                  }
                                  ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                addRadioButton(0, 'Male'),
                                addRadioButton(1, 'Female'),
                                // Row(
                                //   children: <Widget>[
                                //     GestureDetector(
                                //       onTap: (){

                                //       },
                                //       child: Container(
                                //        height: 30,
                                //        width: 30,
                                //        decoration: BoxDecoration(
                                         
                                //         shape: BoxShape.circle,
                                //         color: _isFemale ? textline:Colors.grey
                                //        ),
                                //    ),
                                //     ),
                                //     SizedBox(width: 10,),
                                //     Text("Male",style: TextStyle(
                                //       fontWeight: FontWeight.bold
                                //     ),)
                                //   ],
                                // ),
                                // SizedBox(width: 50,),
                                // Row(
                                //   children: <Widget>[
                                //    Container(
                                //      height: 30,
                                //      width: 30,
                                //      decoration: BoxDecoration(
                                       
                                //       shape: BoxShape.circle,
                                //       color: _isMale ? textline:Colors.grey
                                //      ),
                                //    ),
                                //     SizedBox(width: 10,),
                                //     Text("Female",style: TextStyle(
                                //       fontWeight: FontWeight.bold
                                //     ),)
                                //   ],
                                // )
                              ],
                            ),
                          ),

                         
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            
                            children: <Widget>[
                              Container(
                                width: 30,
                                child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(Icons.calendar_today),
                                  tooltip: 'Select Date of Birth',
                                  onPressed: () {
                                    _selectDate(context);
                                  },
                                ),
                              ),
                              InkWell(
                                child: Text(
                                    _selectedDate,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Color(0xFF000000))
                                ),
                                onTap: (){
                                  _selectDate(context);
                                },
                              ),
                    

                            ],
                          ),



                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: secondary,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                      ),
                                    ),
                                  ),
                                )
                              ],

                            ),
                          ) 

                        ],
                      )
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


