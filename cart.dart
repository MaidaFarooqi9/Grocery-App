import 'package:flutter/material.dart';
import 'package:trialcomponents/Veg_newPage.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';



class Order{
  void call(String number)=>launch('tel:$number'); //tel,mailto tells compiler of its email or sms or telephone optiob
  void sendMail(String email)=>launch('mailto:$email');
}

//get the locator
 GetIt locator=GetIt();

//locate the getIt
void set(){locator.registerSingleton(Order());}




 class Cart extends StatelessWidget {


  final Order _service=locator<Order>();
   
  String num='03360242719';
  String email='maidafarooqi9@gmail.com';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Order Here'),backgroundColor:Colors.green,),

      body:Container(

        decoration:BoxDecoration(
          image:DecorationImage(image: NetworkImage
            ("https://www.washingtonpost.com/resizer/WWLs91LUlbMpRXQMbDcLPXlFUhg=/1484x0/arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/AA43TKRJCY7PJGI3Y6PWFEF44I.jpg"),fit:BoxFit.cover,),


        ) ,

        child:Column(

mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[




               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('You can order the products by sending the details on our email id or by making a phone call',textAlign:TextAlign.center,
                  style:new TextStyle(
                  color:Colors.pink,
                  fontStyle:FontStyle.italic,
                  fontSize: 36.0,

                        )),
               ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[

                 IconButton(onPressed: (){

                    _service.call(num);
                    }, icon: Icon(Icons.add_call),color:Colors.green,iconSize:72.0,splashColor: Colors.yellowAccent),
       IconButton(onPressed: (){

         _service.sendMail(email);
       }, icon: Icon(Icons.email),color:Colors.red,iconSize:72.0,splashColor: Colors.yellowAccent),


     ],
      ),
            ),
              ),

               //Center(child:IconButton( onPressed: () {}, icon: Icon(Icons.email),color:Colors.lightGreenAccent,iconSize: 29.0,splashColor: Colors.yellowAccent,),
                 //     ),



   ],



      ),
    ),);
  }
}
