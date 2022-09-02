import 'package:flutter/material.dart';
import 'b home.dart';

class detailes extends StatefulWidget {
  final String name0;
  final  String img0;
  final   int min0;
  final   String loc0;
  final   String rate0;
  final   int price0;

  detailes ({
    required this.name0,
    required this.img0,
    required this.min0,
    required this.loc0,
    required this.rate0,
    required this.price0,
  });
  @override
  State<detailes> createState() => _detailesState();
}

class _detailesState extends State<detailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
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
              margin: EdgeInsets.only(top: 70),
              child:  ListView(
                padding: const EdgeInsets.all(0.0),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                    width: 700,
                    height: 1500,
                    decoration: BoxDecoration(
                      color:  Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 17, 19, 0),
                            child: Text(widget.name0, style: TextStyle(color: Colors.red,
                              fontSize: 23,  fontFamily: "cario", fontWeight: FontWeight.bold,
                            ),)
                            ,
                          ),
                        ), // Restaurant name

                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 19, 0),
                          child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,

                                      children: [
                                        Row(
                                          children: [
                                            Text("رائع", style: TextStyle(
                                                fontSize: 15, fontFamily: "cario" ),),
                                            Icon(Icons.emoji_emotions_outlined, size: 17,)
                                          ],
                                        ), // Rate

                                        SizedBox(height: 9,),

                                        Row(

                                          children: [
                                            Text("الحد الادنى للطلب: ${widget.min0} د.ع", style: TextStyle(
                                                fontSize: 15, fontFamily: "cario" ),),
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
                                              fontSize: 15, fontFamily: "cario",
                                            ),),
                                            Icon(Icons.delivery_dining_outlined, size: 17,)
                                          ],
                                        ), // price

                                        SizedBox(height: 9,),

                                        Row(

                                          children: [
                                            Text(widget.loc0, style: TextStyle(
                                                fontSize: 15, fontFamily: "cario" ),),
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
                                  mainAxisAlignment: MainAxisAlignment.end,

                                  children: [
                                    Text("وقت التوصيل المتوقع من نصف ساعة الى ساعة", style: TextStyle(
                                        fontSize: 15, fontFamily: "cario" ),),
                                    Icon(Icons.access_time, size: 17,)
                                  ],
                                ), // Time
                              ],
                            )
                        ), // info
                        
                        Container(
                          height: 53, width: MediaQuery.of(context).size.width -50,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          margin: EdgeInsets.symmetric(vertical: 19),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [ Text(" ...  ابحث عن طبق او مائدة",
                              style: TextStyle(fontSize: 15, fontFamily: "cario", color: Colors.grey),) ],
                          ),
                        ), // search

                        DefaultTabController(
                            length: 3, // length of tabs
                            initialIndex: 0,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children:
                            <Widget>[
                              Container(
                                child: TabBar(
                                  labelColor: Colors.green,
                                  unselectedLabelColor: Colors.black,
                                  tabs: [
                                    Tab(text: 'مقبلات باردة'),
                                    Tab(text: 'المطبخ التهامي'),
                                    Tab(text: 'اطباق خان المندي'),
                                  ],
                                ),
                              ),
                              Container(
                                  height: 400, //height of TabBarView
                                  decoration: BoxDecoration(
                                      border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                                  ),
                                  child: TabBarView(children: <Widget>[
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                          Container(
                                            height: 90, width: MediaQuery.of(context).size.width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("32.000 د.ع"),
                                                          SizedBox(width: 90,),
                                                          Text("طبق خان المندي"),


                                                        ],
                                                      ),
                                                    )
                                                ),


                                                Container(
                                                  height: 90, width: 90,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(13),
                                                      image: DecorationImage(
                                                        image: AssetImage("image/tala.png"),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),

                                                ),

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1, color: Colors.grey.withOpacity(0.7),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ])
                              )
                            ]
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), //body
          ],
        )
    );

  }

}