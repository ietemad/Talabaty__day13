import 'package:flutter/material.dart';
import 'package:talabaty/one/data.dart';
import 'package:talabaty/one/order.dart';
import 'package:talabaty/one/wallet.dart';
import '../one/b home.dart';
import '../one/detailes.dart';


class home13 extends StatefulWidget {
  const home13({Key? key}) : super(key: key);

  @override
  State<home13> createState() => _home13State();
}

class _home13State extends State<home13> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 7, 13, 0),
            child: Stack(
              children: [
                Icon(Icons.notifications_none_rounded, color: Colors.black,
                  size: Is(),),
                Container(
                  margin: EdgeInsets.fromLTRB(27, 3, 0, 0),
                  width: 11, height: 11,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                )
              ],
            ),
          ) //Notification
        ],

        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black,
              size: fsm(),),
            Text("ٍ$location",
              style: TextStyle(color: Colors.black, fontSize: 23),)
          ],
        ),

        leading: Icon(Icons.search, color: Colors.black, size: Is(),),

      ),

      body:
      Container(
        height: MediaQuery.of(context).size.height,
        child:
        ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index ){
              return
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom:13),
                      height:  MediaQuery.of(context).size.height/6.5,
                      width: MediaQuery.of(context).size.width,
                      child:
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: false,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index ){
                            return Row(
                              children: [
                                category(name18, pic18, Colors.black),
                                category(name17, pic17, Colors.black),
                                category(name16, pic16, Colors.black),
                                category(name15, pic15, Colors.black),
                                category(name14, pic14, Colors.black),
                                category(name13, pic13, Colors.black),
                                category(name12, pic12, Colors.black),
                                category(name11, pic11, Colors.black),
                                category(name10, pic10, Colors.black),
                                category(name9, pic9, Colors.black),
                                category(name8, pic8, Colors.black),
                                category(name7, pic7, Colors.black),
                                category(name6, pic6, Colors.black),
                                category(name5, pic5, Colors.black),
                                category(name4, pic4, Colors.black),
                                category(name3, pic3, Colors.black),
                                category(name2, pic2, Colors.black),
                                Container(
                                  child: Stack(
                                    children: [
                                      category(name1, pic1, Color(0xfff6323e)),
                                      Positioned(
                                        top: 10,
                                        child:
                                        Container(
                                            width: 30, height: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                border: Border.all(width: 1, color: Colors
                                                    .white)
                                            ),
                                            child: Center(
                                              child: Text("239", style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ) // the first one
                              ],
                            )
                              ;
                          }
                          ), //

                    ),  // Category

                    Container(
                      height: MediaQuery.of(context).size.height/1.63,
                      width: MediaQuery.of(context).size.width,
                      child:
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: false,
                          itemCount: 1,
                          itemBuilder:(BuildContext context, int index ){
                            return
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 13),
                                        child:
                                        Column(
                                          children: [
                                            Text("المحلات الاكثر شيوعاً",style: TextStyle(fontSize: fsm(), fontWeight: FontWeight.bold,
                                                fontFamily: "Cario",color: Color(0xfff6323e)
                                            ),),
                                            Container(
                                              height: 3, width: MediaQuery.of(context).size.width/2.5,
                                              color: Color(0xfff6323e),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ), // Tabview

                                  Container(
                                    margin: EdgeInsets.only(top: 7),
                                    height: 170,
                                    width: MediaQuery.of(context).size.width,
                                    child:
                                    ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: false,
                                        itemCount: 1,
                                        itemBuilder:(BuildContext context, int index ){
                                          return
                                          Row(
                                            children: [
                                              restaurant("عروس دمشق","image/r4.png"),
                                              restaurant0("بيتزا روما","image/r3.png"),
                                              restaurant0("بركر ميكرز","image/r2.png"),
                                              restaurant("زرزور","image/r1.png"),
                                            ],
                                          )
                                            ;
                                        }


                                    )

                                    ,
                                  ), //restaurant view

                                  Container(
                                    height: 37,
                                    margin: EdgeInsets.only(bottom: 27),
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: false,
                                        itemCount: 1,
                                        itemBuilder:(BuildContext context, int index ){
                                          return
                                          Row(
                                            children: [
                                              Container(
                                                width: 90,
                                                margin: EdgeInsets.symmetric(horizontal: 7),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(17)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text("جديد", style: TextStyle(color: Colors.grey,
                                                        fontWeight: FontWeight.bold),),
                                                    Icon(Icons.store_outlined, color: Colors.grey,),
                                                  ],
                                                ),
                                              ), //new
                                              Container(
                                                width: 77,
                                                margin: EdgeInsets.symmetric(horizontal: 7),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(17)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("حصري", style: TextStyle(color: Colors.grey,
                                                        fontWeight: FontWeight.bold),),
                                                    Icon(Icons.star_border_purple500_outlined, color: Colors.grey,),
                                                  ],
                                                ),
                                              ), // star
                                              Container(
                                                width: 115,
                                                margin: EdgeInsets.symmetric(horizontal: 7),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(17)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("توصيل مجاني", style: TextStyle(color: Colors.grey,
                                                        fontWeight: FontWeight.bold),),
                                                    Icon(Icons.delivery_dining_outlined, color: Colors.grey,),
                                                  ],
                                                ),
                                              ), // free delivery
                                              Container(
                                                width: 115,
                                                margin: EdgeInsets.symmetric(horizontal: 7),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(17)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("يدعم المحفظة", style: TextStyle(color: Colors.grey,
                                                        fontWeight: FontWeight.bold),),
                                                    Icon(Icons.account_balance_wallet_outlined, color: Colors.grey,),
                                                  ],
                                                ),
                                              ), // wallet
                                              Container(
                                                width: 90,
                                                margin: EdgeInsets.symmetric(horizontal: 7),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    borderRadius: BorderRadius.circular(17)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("خصومات", style: TextStyle(color: Colors.grey,
                                                        fontWeight: FontWeight.bold),),
                                                    Icon(Icons.percent, color: Colors.grey,),
                                                  ],
                                                ),
                                              ), // sales
                                              Container(
                                                width: 73,
                                                margin: EdgeInsets.symmetric(horizontal: 7),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(17)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("الكل", style: TextStyle(color: Colors.white,
                                                        fontWeight: FontWeight.bold),),
                                                    Icon(Icons.home, color: Colors.white,),
                                                  ],
                                                ),
                                              ), //home
                                            ],
                                          )
                                            ;
                                        }
                                    ),
                                  ),

                                  restaurant1(
                                    "هايزن",
                                    "https://i.ytimg.com/vi/yR6XMD60iVA/maxresdefault.jpg",
                                    10000,
                                    "المنصور_14 رمضان",
                                    "جيد جدا",
                                    1000,
                                  ),
                                  restaurant1(
                                    "وينكز",
                                    "https://scontent.fbgw41-1.fna.fbcdn.net/v/t1.6435-9/88445847_521158008538017_4229030885057363968_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=kiHvATeGd5oAX81Or4w&_nc_ht=scontent.fbgw41-1.fna&oh=00_AT_xEDY_bYDBfJPceGmj4Hty_ZyQktSXbgx6V59Y3l3dtA&oe=632CDB9E",
                                    1000,
                                    "حي الجامعة_شارع الربيع",
                                    "ممتاز",
                                    3000,
                                  ),
                                  restaurant1(
                                    "جايدة تمام",
                                    "https://www.justfood.tv/nawa3emPics/zinger.jpg",
                                    10000,
                                    "الدورة_ابو الطيارة",
                                    "فول الفول",
                                    3000,
                                  )
                                ],
                              )
                              ;
                          }
                      )
                      ,
                    )
                  ],
                )
                ;
            }),
      )
      ,

      bottomNavigationBar:
      Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Color(0xfff5e3d7).withOpacity(0.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            GestureDetector(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_outlined, color: Color(0xff948476), size: Is(),),
                  Text("الحساب",style: TextStyle(fontSize: fs(), color: Color(0xff948476)),)
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
                  Image.asset("image/bill.png", height: Is(), width: Is(),),
                  Text("الطلبات",style: TextStyle(fontSize: fs(), color: Color(0xff948476)),)

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
                  Icon(Icons.account_balance_wallet_outlined, color: Color(0xff948476), size:Is(),),
                  Text("المحفظة",style: TextStyle(fontSize: fs(), color: Color(0xff948476)),)
                ],
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
                  Icon(Icons.home, color: Color(0xfff6323e), size: Is(),),
                  Text("الرئيسية",style: TextStyle(fontSize: fs(), color: Color(0xfff6323e)),)
                ],
              ),


              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder:(context) => home13( )));
              },
            )





          ],
        ),
      )
      ,

    );




  }

  Container category(
      String name00,
      String img00,
      Color color00,
      ){
    return
      Container(
        margin: EdgeInsets.fromLTRB(7, 7, 7, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/9,
              width: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("$img00",),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
            SizedBox(height: 3,),
            Text("$name00",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,
                fontFamily: "Cario",color: color00 ),)
          ],
        ),
      )
    ;
  }

  restaurant1(
      String name77,
      String img77,
      int min77,
      String loc77,
      String rate77,
      int price77,

      ){
    return
      GestureDetector(
        child: Container(
          width: 600,
          margin: EdgeInsets.only(bottom: 17),
          child:
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/5,
                          width: MediaQuery.of(context).size.width -50,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage("$img77",),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 28, top: 12,
                    child:
                    Container(
                      height: 35, width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white
                      ),
                      child: Icon(Icons.delivery_dining_outlined,color: Colors.red,),
                    ),),
                ],

              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("الحد الادنى للطلب:  $min77 د.ع",style: TextStyle(
                        color: Colors.grey,  fontSize: fs(), fontFamily: "cario"
                    ),),
                    Text("$name77",style: TextStyle(color: Colors.red,
                        fontSize: fsn(), fontWeight: FontWeight.bold, fontFamily: "cario"
                    ),),
                  ],
                ),

              ),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 11),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("سعر التوصيل: $price77دزع",style: TextStyle(color: Colors.grey,
                            fontSize: fs(), fontFamily: "cario"
                        ),),
                        Icon(Icons.delivery_dining_outlined,color: Colors.grey,size: Is(),),
                      ],
                    ),


                    SizedBox(width: 7,),

                    Row(
                      children: [
                        Text("$rate77",style: TextStyle(color: Colors.grey,
                            fontSize: fs(), fontFamily: "cario"
                        ),),
                        Icon(Icons.emoji_emotions_outlined,color: Colors.grey, size: Is(),),
                      ],
                    ),

                    SizedBox(width: 7,),

                    Row(
                      children: [
                        Text("$loc77",style: TextStyle(color: Colors.grey,
                            fontSize: fs(), fontFamily: "cario"
                        ),),
                        Icon(Icons.location_on_outlined,color: Colors.grey, size: Is(),),
                      ],
                    )
                  ],
                )
                ,
              )
            ],
          ),
        ),
        onTap: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder:(context) => detailes(
            name0: name77,
            img0: img77,
            min0: min77,
            loc0: loc77,
            rate0: rate77,
            price0: price77,
          )));
        },
      )

    ;
  }
  fsm(){
    double s;
    if(
    MediaQuery.of(context).size.width<350
    ){
      s=15;
    }
    else if(MediaQuery.of(context).size.width<300) {
      s=13;
    }
    else if(MediaQuery.of(context).size.width>800) {
      s=35;
    }
    else{
      s=19;
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
    else if(MediaQuery.of(context).size.width>900) {
      s=25;
    }
    else{
      s=21;
    }
    return s;
  } //Name size

  fs(){
    double s;
    if(MediaQuery.of(context).size.width<350){
      s=7;
    }
    else if(MediaQuery.of(context).size.width<300) {
      s=9;
    }
    else if(MediaQuery.of(context).size.width>800) {
      s=17;
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
      h= 900;
    }
    else{
      h= MediaQuery.of(context).size.height as double;
    }

    return h;
  }





}
