import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:trialcomponents/cart.dart';
import 'package:trialcomponents/veg.dart';
class Veg_newPage extends StatefulWidget {


  final product ;
  final  pic;
  final  price;


  const Veg_newPage({Key key, this.product, this.pic, this.price}) : super(key: key);

  @override
  _Veg_newPageState createState() => _Veg_newPageState();

}

class _Veg_newPageState extends State<Veg_newPage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
appBar:AppBar(title: Text('View Products'),backgroundColor:Colors.lightGreen,
actions: <Widget>[new IconButton(icon: Icon(Icons.shopping_cart),color:Colors.pink,
  onPressed:(){Navigator.pushNamed(context,'/cart');},
        )],),

             body:GridTile(
            child:widget.pic,
                footer: Container(

                  child:Column(
                    children: <Widget>[
                      Text(widget.product,style: TextStyle(fontSize: 32.0),),
                      Text(widget.price,style: TextStyle(fontSize: 30.0,color:Colors.red),),
}),
                                          ],
                  ),

                ),
              ),






    );
  }
}
