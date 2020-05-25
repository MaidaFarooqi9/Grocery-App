import 'package:flutter/material.dart';
import 'Veg_newPage.dart';
class Fruit extends StatefulWidget {


  @override
  _FruitState createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  @override

  var product_list_fruit=[
    {
    "name" : "Apple",
    "pic":Image.network("https://5.imimg.com/data5/LM/DU/MY-22954806/apple-fruit-500x500.jpg"),
    "price":"Rs 90/kg",
  },


    {
      "name" : "Strawberry",
      "pic":Image.network("https://globalplantgenetics.com/cms/resources/strawberries-1.jpg"),
      "price":"Rs 150/kg",
    },

    {
      "name" : "Banana",
      "pic":Image.network("https://images-na.ssl-images-amazon.com/images/I/61fZ%2BYAYGaL._SL1500_.jpg"),
      "price":"Rs 80/kg",
    },

    {
      "name" : "Watermelon",
      "pic":Image.network("https://cdn.britannica.com/99/143599-050-C3289491/Watermelon.jpg"),
      "price":"Rs 200",
    },

    {
      "name" : "Melon",
      "pic":Image.network("https://deluxeproduce.com/wp-content/uploads/2017/06/canary-melon.jpg"),
      "price":"Rs 200",
    },
    {
      "name" : "Mango",
      "pic":Image.network("https://www.samaa.tv/wp-content/uploads/2016/07/1-4.jpg"),
      "price":"Rs 200/kg",
    },
    {
      "name" : "Grapes",
      "pic":Image.network("https://images-na.ssl-images-amazon.com/images/I/61-UMTbWTZL._SY741_.jpg"),
      "price":"Rs 100/kg",
    },
    {
      "name" : "Oranges",
      "pic":Image.network("https://s.alicdn.com/@sc01/kf/Uef168baa579746c2b9c1533101b48deac/Good-quality-Orange-Fruit-Wholesale-Valencia-Navel.jpg_300x300.jpg"),
      "price":"Rs 120/kg",
    },
    {
      "name" : "Grewia",
      "pic":Image.network("https://3.bp.blogspot.com/_kmRrEaE-evw/TAD6sp6mCII/AAAAAAAADME/-hO4M3pzyu8/s1600/DSCN0474.jpg"),
      "price":"Rs 100/kg",
    },
  ];


  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar:AppBar(
        title:Text('Fruits'),backgroundColor:Colors.lightGreen,
          actions: <Widget>[new IconButton(icon: Icon(Icons.shopping_cart),color:Colors.pink,
            onPressed:(){Navigator.pushNamed(context,'/cart');},
          )], ),
      body:(
          InkWell(

            onTap: (){
            },

            child: GridView.builder(itemCount: product_list_fruit.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Fruits_Details
                    (
                    pro_name: product_list_fruit[index]['name'],
                    pro_pic: product_list_fruit[index]['pic'],
                    pro_price: product_list_fruit[index]['price'],
                  );


                }

            ),)

      ),
    );
  }

}

class Fruits_Details extends StatelessWidget {


  final pro_name;
  final pro_pic ;
  final pro_price;



  Fruits_Details({this.pro_name,this.pro_pic,this.pro_price});
  var cart=[];

  @override
  Widget build(BuildContext context) {
    return Card(

      child:InkWell(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Veg_newPage(product:pro_name, price:pro_price, pic:pro_pic,)));
        },


        child: GridTile(
          footer:Container(

            color:Colors.white,
            child:ListTile(
              leading: Text(pro_name,style: TextStyle(fontWeight:FontWeight.bold),),
              title:Text(pro_price,style: TextStyle(color:Colors.red,),),

            ),



          ),
          child:pro_pic,

        ),
      ),
    );

  }
}


