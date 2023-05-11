import 'package:flutter/material.dart';
import '../common/theme_helper.dart';
import 'Product model.dart';
import 'login_page.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar (
          title: Center(child: Text ('Product Screen'),
          ),
          automaticallyImplyLeading: false,

        ),

        body : Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount : productlist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index){
                return Column(
                  children: [

                    Container(
                      height: 300,
                      width: 150,


                      child: Stack(
                        children: [
                          Image.network(productlist[index].image!),

                          InkWell(
                            onTap: (){
                              setState(() {
                                productlist[index].isFavorite = !productlist[index].isFavorite!;

                              });
                            },
                            child: Icon(
                              productlist[index].isFavorite == true
                                  ?Icons.favorite
                                  :Icons.favorite_border,
                              color: Colors.red,

                            ),
                          )],
                      ),


                    ),


                    Text (productlist[index].name!),
                    Text (productlist[index].price.toString()!),

                  ],
                );
              }),
        )

    );
  }
}