import 'package:flutter/material.dart';

import '../one/b home.dart';
import '../one/order.dart';
import '../one/wallet.dart';

class d10 extends StatefulWidget {

  final String name0;
  final  String img0;
  final   int min0;
  final   String loc0;
  final   String rate0;
  final   int price0;

  d10 ({
    required this.name0,
    required this.img0,
    required this.min0,
    required this.loc0,
    required this.rate0,
    required this.price0,
  });
  @override
  State<d10> createState() => _d10State();
}

class _d10State extends State<d10> {
 int x=1;
 int y=6500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:

           Container(
             height: MediaQuery.of(context).size.height,
             child:
             ListView(
               children: [
                 Stack(
                   children: [
                     Container(
                       height: MediaQuery.of(context).size.height/4,
                       width: MediaQuery.of(context).size.width,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage(widget.img0),
                             fit: BoxFit.cover),
                       ),
                     ), // Main pic

                     Align(
                       alignment: Alignment.topRight,
                       child:   GestureDetector(
                         child: Container(
                           height: 50, width: 50,
                           margin: EdgeInsets.fromLTRB(0, 30, 17, 0),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(13),
                               color: Colors.white.withOpacity(0.7)
                           ),
                           child:  Icon(Icons.arrow_forward_outlined, color: Colors.black, size: 30,),
                         ),
                         onTap: (){
                           Navigator.of(context)
                               .pop(MaterialPageRoute(builder: (context) => home()));
                         },
                       ),
                     ), //Back icon


                     Container(
                       margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                       width: MediaQuery.of(context).size.width,
                       height: h(),
                       decoration: BoxDecoration(
                         color:  Color(0xFFF3F3F3),
                         borderRadius: BorderRadius.circular(19),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Align(
                             alignment: Alignment.topRight,
                             child: Padding(
                               padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/15),
                               child: Text(widget.name0, style: TextStyle(color: Color(0xffd51623),
                                 fontSize: fsn(),  fontFamily: "cario", fontWeight: FontWeight.bold,
                               ),)
                               ,
                             ),
                           ), // Restaurant name


                           Container(
                               child:
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [

                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.end,

                                         children: [
                                           Row(
                                             children: [
                                               Text("رائع", style: TextStyle(
                                                   fontSize: fs(), fontFamily: "cario" ),),
                                               Icon(Icons.emoji_emotions_outlined, size: 17,)
                                             ],
                                           ), // Rate

                                           SizedBox(height: 9,),

                                           Row(

                                             children: [
                                               Text("الحد الادنى للطلب: ${widget.min0} د.ع", style: TextStyle(
                                                   fontSize: fs(), fontFamily: "cario" ),),
                                               Icon(Icons.emoji_emotions_outlined, size: 17,)
                                             ],
                                           ), // minimum

                                         ],
                                       ),

                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children: [
                                           Row(
                                             children: [
                                               Text("سعر التوصيل: 1,500  د.ع ", style: TextStyle(
                                                 fontSize: fs(), fontFamily: "cario",
                                               ),),
                                               Icon(Icons.delivery_dining_outlined, size: 17,)
                                             ],
                                           ), // price

                                           SizedBox(height: 9,),

                                           Row(

                                             children: [
                                               Text(widget.loc0, style: TextStyle(
                                                   fontSize: fs(), fontFamily: "cario" ),),
                                               Icon(Icons.location_on_outlined, size: 17,)
                                             ],
                                           ), //location

                                         ],
                                       ), // price & location
                                       // rate & minimum
                                     ],
                                   ), // Info
                                   SizedBox(height: 9,),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,

                                     children: [
                                       Text("وقت التوصيل المتوقع من نصف ساعة الى ساعة", style: TextStyle(
                                           fontSize: fs(), fontFamily: "cario" ),),
                                       Icon(Icons.access_time, size: 17,)
                                     ],
                                   ), // Time
                                 ],
                               )
                           ), // info

                           Align(
                             alignment: Alignment.topRight,
                             child: Padding(
                               padding: EdgeInsets.only(right: 17),
                               child: Text("سندويش فيلية دجاج", style: TextStyle(color: Color(0xffd51623),
                                 fontSize: fsm(),  fontFamily: "cario", fontWeight: FontWeight.bold,
                               ),)
                               ,
                             ),
                           ), // food name

                           Container(
                             height: 90,
                             width: MediaQuery.of(context).size.width -30,
                             padding: EdgeInsets.symmetric(horizontal: 30),
                             decoration: BoxDecoration(
                                 color: Colors.grey.withOpacity(0.2),
                                 borderRadius: BorderRadius.circular(15)
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Icon(Icons.keyboard_arrow_up_outlined, size: 30,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("اضافات", style: TextStyle(color: Color(0xfff6323e),
                                       fontSize: fs(),  fontFamily: "cario", fontWeight: FontWeight.bold,
                                     ),),
                                     Text("اختياري",
                                       style: TextStyle(fontSize: fs(), fontFamily: "cario", color: Colors.grey),) ,

                                   ],
                                 )

                               ],
                             ),
                           ), // adds

                           Align(
                             alignment: Alignment.topRight,
                             child: Padding(
                               padding: EdgeInsets.only(right: 27),
                               child: Text("تعليمات خاصة", style: TextStyle(color: Color(0xffd51623),
                                 fontSize: fsm(),  fontFamily: "cario", fontWeight: FontWeight.bold,
                               ),)
                               ,
                             ),
                           ),

                           Container(
                             height: h()/15,
                             width: MediaQuery.of(context).size.width -30,
                             padding: EdgeInsets.symmetric(horizontal: 23),
                             decoration: BoxDecoration(
                                 color: Colors.grey.withOpacity(0.2),
                                 borderRadius: BorderRadius.circular(15)
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text("اذا كانت لديك اي ملاحظات تخص الطلب يرجى كتابتها هنا",
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                       fontSize: fs(),  fontFamily: "almaria",
                                       fontWeight: FontWeight.bold,
                                       color: Colors.grey, height: 1.5
                                   ),
                                 ),
                               ],
                             ),
                           ),


                           Container(

                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 GestureDetector(
                                     child:Container(
                                       width: MediaQuery.of(context).size.width/5,
                                       height: h()/21,
                                       padding: EdgeInsets.only(bottom: 10) ,
                                       decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.red.withOpacity(0.7)
                                       ),
                                       child: Icon(Icons.minimize_outlined, size: Is(),
                                         color: Colors.white,) ,
                                     ),
                                     onTap: () {
                                       setState(() {
                                         if (x>1) x = x - 1;
                                       });
                                     }),

                                 Container(
                                     width: MediaQuery.of(context).size.width/3,
                                     height: h()/19,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         color: Colors.white
                                     ),
                                     child:Center(
                                       child:  Text("$x",style: TextStyle(
                                           fontSize: fs(), color: Colors.black.withOpacity(0.7)
                                       ),),
                                     )
                                 ),

                                 GestureDetector(
                                     child: Container(
                                         width: MediaQuery.of(context).size.width/5,
                                         height: h()/21,
                                         decoration: BoxDecoration(
                                             shape: BoxShape.circle,
                                             color: Colors.green.withOpacity(0.5)
                                         ),
                                         child: Icon(Icons.add,size: Is(),
                                           color: Colors.white,)
                                     ),
                                     onTap: () {
                                       setState(() {
                                         x++;
                                       });
                                     }),
                               ],
                             ),
                           ),


                           calculation(x, y),
                           //Text("${num*5000} IQD")


                           Container(
                               width: MediaQuery.of(context).size.width/2,
                               height: h()/19,

                               child: ElevatedButton(
                                 onPressed: (){},
                                 style: ElevatedButton.styleFrom(
                                   primary: Color(0xfff6323e),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(30),// Background color
                                   ),
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [Text("اضافة الى السلة",style: TextStyle(fontSize: fs(), fontFamily: "cario",
                                       fontWeight: FontWeight.bold), ),],
                                 )
                               )
                           ),
                         ],
                       ),
                     ), //body
                   ],
                 )
               ],
             ),
           ),

      bottomNavigationBar:
      Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Color(0xfff2f2f2).withOpacity(0.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_outlined, color: Color(0xffbdbdbd), size: Is(),),
                  Text("الحساب",style: TextStyle(fontSize: fs(), color: Color(0xffbdbdbd)),)
                ],
              ),


              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder:(context) => home( )));
              },
            ),

            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("image/billg.png", height: Is(), width: Is(),),
                  Text("الطلبات",style: TextStyle(fontSize: fs(), color: Color(0xffbdbdbd)),)

                ],
              ),


              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder:(context) => order( )));
              },
            ),

            GestureDetector(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet_outlined, color:  Color(0xffbdbdbd), size: Is(),),
                  Text("المحفظة",style: TextStyle(fontSize: fs(), color: Color(0xffbdbdbd),)
                  )],
              ),


              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder:(context) => wallet( )));
              },
            ),

            GestureDetector(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined, color: Color(0xffbdbdbd), size: Is(),),
                  Text("الرئيسية",style: TextStyle(fontSize: fs(), color:Color(0xffbdbdbd) ),)
                ],
              ),


              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder:(context) => home( )));
              },
            ),

          ],
        ),
      )
      ,




    );
  }
 calculation( int m, int n) {
   int z;
   z=m*n;
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text("د.ع  ", style: TextStyle(color: Color(0xffd51623),fontSize: fs(), fontWeight: FontWeight.bold), ),
       Text("$z", style: TextStyle(color: Color(0xffd51623),fontSize: fs(), fontWeight: FontWeight.bold),),

     ],
   ) ;

 }


 fsm(){
   double s;
   if(
   MediaQuery.of(context).size.width<350
   ){
     s=23;
   }
   else if(MediaQuery.of(context).size.width<300) {
     s=13;
   }
   else if(MediaQuery.of(context).size.width>800) {
     s=27;
   }
   else{
     s=27;
   }
   return s;
 } //Titles size

 fsn(){
   double s;
   if(
   MediaQuery.of(context).size.width<350
   ){
     s=23;
   }
   else if(MediaQuery.of(context).size.width<300) {
     s=11;
   }
   else if(MediaQuery.of(context).size.width>800) {
     s=37;
   }
   else{
     s=30;
   }
   return s;
 } //Name size

 fs(){
   double s;
   if(MediaQuery.of(context).size.width<350){
     s=11;
   }
   else if(MediaQuery.of(context).size.width<300) {
     s=5;
   }
   else if(MediaQuery.of(context).size.width>800) {
     s=23;
   }
   else{
     s=13;
   }
   return s;
 } //others font size

 Is(){
   double s;
   if(
   MediaQuery.of(context).size.width<350
   ){
     s=20;
   }
   else if(MediaQuery.of(context).size.width<300) {
     s=9;
   }
   else if(MediaQuery.of(context).size.width>800) {
     s=39;
   }
   else{
     s=30;
   }
   return s;
 }

 h(){
    double h;
    if( MediaQuery.of(context).size.height<1000){
      h= 810;
    }
    else{
      h= MediaQuery.of(context).size.height as double;
    }

      return h;
 }




}
