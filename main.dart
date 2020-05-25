

import 'dart:ui';
import'package:flutter/material.dart';
import 'package:trialcomponents/Veg_newPage.dart';
import 'package:trialcomponents/veg.dart';
import 'package:trialcomponents/fruit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'cart.dart';

//void main() => runApp(MaterialApp(home: MyApp()));

void main() {
  set();
  runApp(MaterialApp(
  initialRoute: '/',
  routes:{
    '/':(context)=>MyApp (),
    '/veg':(context)=>Veg(),
   '/fruit':(context)=>Fruit(),
   '/cart':(context)=>Cart(),

  },

)
); }


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    //Carousel]
    Widget carousel_Veg=new Container(
      height:200.0 ,
      child:Carousel(
        boxFit:BoxFit.cover,
        images:[
          NetworkImage("https://www.heart.org/-/media/aha/h4gm/article-images/fruit-and-vegetables.jpg"),
          NetworkImage("https://www.thespruceeats.com/thmb/MBpJdRYJx6VXKG2ymX90m-Ixpz4=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1076191342-fe807ed3b27e4993900966c5ba0f76a5.jpg"),
          NetworkImage("https://fscomps.fotosearch.com/compc/CSP/CSP154/healthy-vegan-food-concept-fruits-picture__k53683554.jpg"),
          NetworkImage("https://www.foodsafetynews.com/files/2018/08/mixed-fresh-fruits-vegetables-produce-550x311.jpg"),
        ],
        autoplay:true,
        animationCurve:Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds:1000),
      ),

    );

    //caroousel for fruits
    Widget carousel_Fruit=new Container(
        height:200.0 ,
        child:Carousel(
            boxFit:BoxFit.cover,
            images:[
              NetworkImage("https://www.jacksonhealth.com.au/wp-content/uploads/2019/08/pexels-photo-1132047.jpg"),
              NetworkImage("https://miro.medium.com/max/601/1*CjEqlt11pvJQCRLTO_FTRw.png"),
              NetworkImage("https://image.shutterstock.com/image-photo/cropped-shot-assortment-exotic-fruits-260nw-1668542425.jpg"),
              NetworkImage("https://c8.alamy.com/comp/PKYNH9/fruit-bowl-with-exotic-whole-fruits-close-up-in-rustic-wooden-bowl-PKYNH9.jpg"),

            ],
          autoplay:true,
          animationCurve:Curves.fastOutSlowIn,
          animationDuration:Duration(milliseconds:1000),
        ),

    );

    return Scaffold(
      appBar: AppBar(title: Text("Grocery Store"),
                     backgroundColor: Colors.green),


      body:ListView(

        scrollDirection: Axis.vertical,


        children: <Widget>[


          InkWell(

            child: carousel_Veg,
            onTap:(){
              setState(() {
                Navigator.pushNamed(context, '/veg');
              });
            },
          ),


          Text("                                                              "),
          Text("                                                                 "),


          InkWell(
            child: carousel_Fruit,
            onTap:(){
              setState(() {
                Navigator.pushNamed(context, '/fruit');
              });
            },

          ),
        ],),




      );







      //         RaisedButton(onPressed: (){
          //         Navigator.pushNamed(context, '/loc');
          //     },
          //     child: Text('Location'),),


  /*        FittedBox(
            child:Row(
              children:<Widget>[
                Container(
               child:Column(
                  children: <Widget>[

                    Text("Broccoli  ",
                      style: TextStyle(backgroundColor:Colors.white,
                          color:Colors.pinkAccent,fontSize: 2.0
                      ),
                    ),
                    Text("Rs :50/kg",style: TextStyle(backgroundColor:Colors.white,
                        color:Colors.pinkAccent,fontSize: 1.0
                    ),)
                  ],
                ),
),


                Container(
                  child:Image(
                    fit: BoxFit.contain,
                    height:10,
                    image:NetworkImage("https://previews.123rf.com/images/richardpinder/richardpinder1506/richardpinder150600149/41548068-a-single-florret-of-broccoli-on-a-white-background.jpg"),
                  ),),
              ], ),
          ),




        FittedBox(
        child:Row(
          children:<Widget>[

            Container(

               child:Column(
    children: <Widget>[

      Text("Cauliflower  ",
        style: TextStyle(backgroundColor:Colors.white,
            color:Colors.pinkAccent,fontSize: 2.0
        ),
      ),
      Text("Rs :100/kg",style: TextStyle(backgroundColor:Colors.white,
          color:Colors.pinkAccent,fontSize: 1.0
      ),)
    ],
    )

            ),

            Container(
              child:Image(

                fit: BoxFit.contain,
                height:10,
                //image:NetworkImage("https://previews.123rf.com/images/richardpinder/richardpinder1506/richardpinder150600149/41548068-a-single-florret-of-broccoli-on-a-white-background.jpg"),

              image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT3off3JliUwSKVKq76hJXpTGVd3jdNhEwcnIXh1EvQZfdw7nLI&usqp=CAU"),

              ),),

         ],
        ),
    ),
*/




































}
}
