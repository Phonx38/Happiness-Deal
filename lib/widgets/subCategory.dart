



import 'package:couponzz/screens/categoryDescription.dart';
import 'package:flutter/material.dart';

List<SubCategory> subCategoriesList = [
  SubCategory(name: "Salad", image: "salad.png"),
  SubCategory(name: "Fast Food", image: "sandwich.png"),
  SubCategory(name: "Deserts", image: "ice-cream.png"),
  SubCategory(name: "Beer", image: "pint.png"),
  SubCategory(name: "Sea Food", image: "fish.png"),
  SubCategory(name: "Sea Food", image: "fish.png"),
  SubCategory(name: "Sea Food", image: "fish.png"),
  SubCategory(name: "Sea Food", image: "google.png"),
];

class SubCategories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        
        
        scrollDirection: Axis.horizontal,
       
          
          itemCount: subCategoriesList.length,
          itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
              
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/${subCategoriesList[index].image}"),
                        )),
                  ),
                  SizedBox(height: 10,),
                  FittedBox(child: Text(subCategoriesList[index].name)),
                ],
              )
          ),
        );
      }),

    );
  }
}

class SubCategory{
  final String name;
  final String image;

  SubCategory({this.name, this.image});

}