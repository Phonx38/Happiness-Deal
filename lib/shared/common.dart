  
import 'package:flutter/material.dart';


final primary = Color.fromRGBO(76,167,223,1);
    final secondary =  Color.fromRGBO(253,210,8,1.0);

 
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
  hintText: 'Search',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

 const textInputDeco = InputDecoration(
                hintText: 'Enter your email',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color:Color.fromRGBO(239,12,95,1), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color:Color.fromRGBO(239,12,95,1), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              );