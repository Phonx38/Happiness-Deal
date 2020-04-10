



import 'package:couponzz/screens/categoryDescription.dart';
import 'package:flutter/material.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Fast Food", image: "sandwich.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
  Category(name: "Beer", image: "pint.png"),
  Category(name: "Fish", image: "fish.png"),
  Category(name: "Gifts", image: "gift.png"),
  Category(name: "Shoes", image: "shoe.png"),
  Category(name: "Goggles", image: "goggles.png"),
  Category(name: "Fashion", image: "tshirt.png"),
  Category(name: "Others", image: "knowledge.png"),
];

class HomeGridCategories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
              scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.55),
          ),
          
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
              
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryDetail()));
                    },
                    child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Colors.red[50],
                            //       offset: Offset(2, 6),
                            //       blurRadius: 10
                            //   )
                            // ]
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/${categoriesList[index].image}"),
                        )),
                  ),
                  SizedBox(height: 10,),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(categoriesList[index].name,style: TextStyle(fontSize: 12),)),
                ],
              )
          ),
        );
      }),

    );
  }
}

class Category{
  final String name;
  final String image;

  Category({this.name, this.image});

}