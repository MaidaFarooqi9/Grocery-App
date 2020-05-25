

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:trialcomponents/Veg_newPage.dart';
class Veg extends StatefulWidget {



  @override
  _VegState createState() => _VegState();
}

class _VegState extends State<Veg> {

  @override

  /*List <Veg_Details>cart=[];
  addItem(Veg_Details V){
    cart.add(V);
  }*/

  var product_list = [{
    "name": "Broccoli",
    "pic": Image.network(
        "https://previews.123rf.com/images/richardpinder/richardpinder1506/richardpinder150600149/41548068-a-single-florret-of-broccoli-on-a-white-background.jpg"),
    "price": "Rs 50/kg"
  },
    {
      "name": "Cauliflower",
      "pic": Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT3off3JliUwSKVKq76hJXpTGVd3jdNhEwcnIXh1EvQZfdw7nLI&usqp=CAU"),
      "price": "Rs 100/kg"
    },
    {
      "name": "Corriander",
      "pic": Image.network("https://3.imimg.com/data3/US/IP/MY-5745678/cilantro-coriander-leaves-500x500.jpg"),
      "price": "Rs 20"
    },
    {
      "name": "Garlic",
      "pic": Image.network("https://steemitimages.com/DQmdYyqu2uiodn1xC1Le5R4ZBhjEHiBq4QgjhdMUvyHuNjx/Garlic2.jpg"),
      "price": "Rs 20"
    },
    {
      "name": "Ginger",
      "pic": Image.network("https://www.thespruceeats.com/thmb/gtkEgPgCDwsB5dyg-FXZhjbKn0I=/1879x1409/smart/filters:no_upscale()/GettyImages-116360266-57fa9c005f9b586c357e92cd.jpg"),
      "price": "Rs 20"
    },
    {
      "name": "Cabbage",
      "pic": Image.network("https://www.wallysproducegladstone.com.au/wp-content/uploads/2019/04/cabbage-green_571780078.jpg"),
      "price": "Rs 100/kg"
    },
    {
      "name": "Green Chillies",
      "pic": Image.network("https://img1.exportersindia.com/product_images/bc-full/2019/2/5936200/fresh-green-chilli-1549520489-4701143.jpeg"),
      "price": "Rs 10"
    },
    {
      "name": "Turnip",
      "pic": Image.network("https://images-na.ssl-images-amazon.com/images/I/51CQY1KDytL._SL1000_.jpg"),
      "price": "Rs 50/kg"
    },

  ];

  Widget build(BuildContext context) {






    return Scaffold(
      backgroundColor: Colors.white,

       appBar:AppBar(
         title:Text('Vegetables'),backgroundColor:Colors.lightGreen,
      actions: <Widget>[new IconButton(icon: Icon(Icons.shopping_cart),color:Colors.pink, onPressed:(){
                  Navigator.pushNamed(context, '/cart');
  //Navigator.push(context, MaterialPageRoute(builder: (context) => new Veg_newPage(product:'name',price: 'price',pic:'pic')));


       }),],
       ),
        body:(
        InkWell(

           onTap: (){
               },

           child: GridView.builder(itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Veg_Details
            (
            pro_name: product_list[index]['name'],
            pro_pic: product_list[index]['pic'],
            pro_price: product_list[index]['price'],
          );


        }

    ),)

    ),
    );
  }

}

class Veg_Details extends StatelessWidget {


 final pro_name;
 final pro_pic ;
 final pro_price;



  Veg_Details({this.pro_name,this.pro_pic,this.pro_price});
 var cart=[];

 @override
  Widget build(BuildContext context) {
    return Card(

     child:InkWell(
       onTap: () {


       //  Colors.green;
         //cart.add ( new Veg_newPage(product:pro_name, price:pro_price, pic:pro_pic));

  Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Veg_newPage(product:pro_name, price:pro_price, pic:pro_pic,)));
       },


            child: GridTile(
        footer:Container(

          color:Colors.white,
          child:ListTile(
            leading: Text(pro_name,style: TextStyle(fontWeight:FontWeight.bold),),
             title:Text(pro_price,style: TextStyle(color:Colors.red,),),
           // onTap: (){
           // },
            //subtitle:IconButton(icon:Icon(Icons.favorite, color:Colors.pink),onPressed:(){





              // build(context){
           //new Veg_newPage(product: pro_name,
            //pic: pro_pic,
              //price: pro_price,);

          //}
              //}),



        ),



        ),
        child:pro_pic,

      ),
     ),
    );

  }
}

