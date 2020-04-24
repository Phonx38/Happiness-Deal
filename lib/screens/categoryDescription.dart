
import 'package:badges/badges.dart';
import 'package:couponzz/shared/common.dart';
import 'package:couponzz/shared/searchbar.dart';
import 'package:couponzz/widgets/couponCardList.dart';
import 'package:couponzz/widgets/homepage_bg.dart';
import 'package:couponzz/widgets/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class CategoryDetail extends StatefulWidget {
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  final primary = Color.fromRGBO(76,167,223,1);
  final secondary =  Color.fromRGBO(253,210,8,1.0);


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          elevation: 0,
          backgroundColor: primary,
          leading:  Builder(
                builder: (context) => Center(
                  child: Card(
                    margin: EdgeInsets.only(top:0,left: 0),
                    elevation: 4.0,
                    color: primary,
                    child: GestureDetector(
                      
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.arrow_back_ios,size: 20,),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          }
                          
                        ),
                  ),
                ),
              ),
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

              ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
      heroTag: "one",
      elevation: 1,
      backgroundColor:  secondary,
      child: Icon(Feather.filter,color: primary), onPressed: (){
        _bottomfilter(context);
              }
              ),
            
              body: GestureDetector(
                onTap: (){
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: Stack(
                  children: <Widget>[
                    
                    SafeArea(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children:<Widget>[ 
                                HomePageBg(screenHeight: MediaQuery.of(context).size.height*0.25,color:primary),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
        
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Find best food deals in your city",maxLines: 2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left:12.0,right: 12.0,top:2),
                                        child: SearchField()
                                      ),
        
                                      Padding(
                                      padding: const EdgeInsets.only(top:5.0),
                                      child: SubCategories(),
                                    ),
                                   
                                    ],
                              ),
                                ),
                                
                              ],
                            ),
                            
                            SingleChildScrollView(child: CouponCardList(),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
        
          }
        }
        
        void _bottomfilter(BuildContext context) {
          showModalBottomSheet(context: context, builder: (BuildContext context){
            return Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10)
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text("Filter",style: TextStyle(
                            fontSize: 20.0
                          ),),
                        ),
                        GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.cancel,size:30,color:primary))
                      ],
                    ),
                     SingleChildScrollView(child: Container(child: Divider(color: Colors.grey,))),
                                              
                    SizedBox(height:20),
                    Container(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Text("Category:",style: TextStyle(
                              fontSize: 18.0
                            ),),
                            SizedBox(width:20),
                           Container(
                             color: Colors.lightBlueAccent,
                             height: 30,
                             width: 150,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: GestureDetector(
                                 onTap: (){
                                   _showMultiSelect(context);
                                 },
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     Text("All Selected"),
                                     Icon(Icons.edit,color: Colors.black87,size: 10,)
                                   ],
                                 ),
                               ),
                             ),
                           ),

                           

                        ],
                      ),
                    ),
                    SizedBox(height:30),
                    Container(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Text("Areas:",style: TextStyle(
                              fontSize: 18.0
                            ),),
                            SizedBox(width:55),
                           Container(
                             color: Colors.lightBlueAccent,
                             height: 30,
                             width: 150,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: GestureDetector(
                                 onTap: (){
                                   _showMultiSelect(context);
                                 },
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     Text("All Selected"),
                                     Icon(Icons.edit,color: Colors.black87,size: 10,)
                                   ],
                                 ),
                               ),
                             ),
                           ),

                           

                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          );

          
}


List<MultiSelectDialogItem<int>> multiItem = List();

final valuesToPopulate = {
  1:"Beer",
  2:"Cake",
  3:"Pizza",
  4:"Salad",
  5:"All"
};

void populateMultiSelect(){
  for(int v in valuesToPopulate.keys){
    multiItem.add(MultiSelectDialogItem(v, valuesToPopulate[v]));
  }
}

void _showMultiSelect(BuildContext context) async {
  multiItem = [];
  populateMultiSelect();
  final items = multiItem;
  // final items = <MultiSelectDialogItem<int>>[
  //   MultiSelectDialogItem(1, 'Dog'),
  //   MultiSelectDialogItem(2, 'Cat'),
  //   MultiSelectDialogItem(3, 'Mouse'),
  // ];

  final selectedValues = await showDialog<Set<int>>(
    context: context,
    builder: (BuildContext context) {
      return MultiSelectDialog(
        items: items,
        
      );
    },
  );

  print(selectedValues);
}



class MultiSelectDialogItem<V> {
  const MultiSelectDialogItem(this.value, this.label);

  final V value;
  final String label;
}

class MultiSelectDialog<V> extends StatefulWidget {
  MultiSelectDialog({Key key, this.items, this.initialSelectedValues}) : super(key: key);

  final List<MultiSelectDialogItem<V>> items;
  final Set<V> initialSelectedValues;

  @override
  State<StatefulWidget> createState() => _MultiSelectDialogState<V>();
}

class _MultiSelectDialogState<V> extends State<MultiSelectDialog<V>> {
  final _selectedValues = Set<V>();

  void initState() {
    super.initState();
    if (widget.initialSelectedValues != null) {
      _selectedValues.addAll(widget.initialSelectedValues);
    }
  }

  void _onItemCheckedChange(V itemValue, bool checked) {
    setState(() {
      if (checked) {
        _selectedValues.add(itemValue);
      } else {
        _selectedValues.remove(itemValue);
      }
    });
  }

  void _onCancelTap() {
    Navigator.pop(context);
  }

  void _onSubmitTap() {
    Navigator.pop(context, _selectedValues);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text("Categories",style: TextStyle(
                      fontSize: 20.0
                    ),),
                  ),

                  GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.cancel,size:30,color:primary))
                ],
              ),
              SingleChildScrollView(child: Container(child: Divider(color: Colors.grey,))),
              ListBody(
              children: widget.items.map(_buildItem).toList(),
            ),
            ],
          ),
        )
      ),
      
    );
  }

  Widget _buildItem(MultiSelectDialogItem<V> item) {
    final checked = _selectedValues.contains(item.value);
    return CheckboxListTile(
      dense: true,
      value: checked,
      title: Text(item.label),
      controlAffinity: ListTileControlAffinity.trailing,
      onChanged: (checked) => _onItemCheckedChange(item.value, checked),
    );
  }
}
