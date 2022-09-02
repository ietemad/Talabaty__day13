import 'package:flutter/material.dart';

import 'detailes.dart';
String location="المنصور";

String name1 ="المطاعم";
String pic1 ="image/a.jpeg";

String name2 ="بلوشي";
String pic2 ="image/b.jpg";

String name3 =  "دايت فود";
String pic3 ="image/c.jpeg";

String name4 ="الماركت";
String pic4 ="image/d.jpeg";

String name5 ="حلويات ومعجنات";
String pic5 ="image/e.jpeg" ;

String name6 ="الفواكة والخضروات";
String pic6 ="image/f.jpeg";

String name7 ="اللحوم";
String pic7 ="image/g.jpeg";

String name8 ="بحرية";
String pic8 ="image/h.jpeg";

String name9 ="التجهيزات الغذائية";
String pic9 ="image/i.png";

String name10 ="بطاقات التعبئة";
String pic10 ="image/j.png";

String name11 ="البن والقهوة";
String pic11 ="image/k.png";

String name12 ="الزهور";
String pic12 ="image/l.png";

String name13 ="الكرزات";
String pic13 ="image/m.png";

String name14 ="مكملات غذائية";
String pic14 ="image/n.png";

String name15 ="المرطبات";
String pic15 ="image/o.png";

String name16 ="فطور صباحي";
String pic16 ="image/p.png";

String name17 ="المكتبات";
String pic17 ="image/q.png";

String name18 ="المعجنات";
String pic18 ="image/r.png";



Container restaurant(
    String name11,
    String img11,

    ){
  return
    Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 100, width: 270,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("$img11",),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15)
            ),
          ),
          SizedBox(height: 5,),
          Text("$name11",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,
              fontFamily: "Cario",color: Color(0xfff6323e)),)
        ],
      ),
    )
    ;
}
Stack restaurant0(
    String name33,
    String img33,

    ){
  return
    Stack(
      children: [

        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100, width: 270,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("$img33",),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              SizedBox(height: 5,),
              Text("$name33",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,
                  fontFamily: "Cario",color: Color(0xfff6323e)),)
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

    )
  ;
}



