import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String _counter0 = '';
  String _counter1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body:
      SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 37),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(

            children: [

              SizedBox(height: 13 ,),

              SafeArea(
                child: Image.asset("image/TalabatyLogo.jpg"),
              ),

              SizedBox(height: 70 ,),

              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _counter0 = value;
                  });
                },
                inputFormatters: [
                  LengthLimitingTextInputFormatter(15),
                ],
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                    filled: true,
                    fillColor: Color(0xfff2f2f2),

                    hintText: 'الاسم',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                    counterText: '${_counter0.length.toString()} /15',
                    counterStyle: TextStyle(fontSize: 13, color: Colors.red),

                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff2f2f2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(13)
                    ),

                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff2f2f2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(13)
                    )
                ),

                style: TextStyle(color: Colors.black, fontFamily: 'Cario'),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ), // Name




              SizedBox(height: 17 ,),



              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _counter1 = value;
                  });
                },

                inputFormatters: [
                  LengthLimitingTextInputFormatter(11),
                ],
                textAlign: TextAlign.right,
                decoration: InputDecoration(

                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                    filled: true,
                    fillColor: Color(0xfff2f2f2),

                    hintText: 'رقم الهاتف' ,
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff2f2f2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(13)
                    ),

                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff2f2f2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(13)
                    ),

                    counterText: '${_counter1.length.toString()} /11',
                    counterStyle: TextStyle(fontSize: 13, color: Colors.red)
                ),


                style: TextStyle(color: Colors.black, fontFamily: 'Cario'),

                keyboardType: TextInputType.phone,

                textInputAction: TextInputAction.done,
              ), //Phone Number



              SizedBox(height: 17 ,),


              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.red,),
                  Text("إذا كان لديك رمز مشاركة, إضغط هنا",
                    style: TextStyle(fontSize: 23, fontFamily: 'cario',
                        color: Colors.red ),),
                  SizedBox(width: 11,),
                ],
              ),



              SizedBox(height: 19 ,),




              TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(15),
                ],
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                    filled: true,
                    fillColor: Color(0xfff2f2f2),

                    hintText: 'رمز المشاركة',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff2f2f2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(13)
                    ),

                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xfff2f2f2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(13)
                    )

                ),

                style: TextStyle(color: Colors.black, fontFamily: 'Cario'),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),

              SizedBox(height: 53 ,),

              Container(
                  height: 57,
                  width: 373,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(27)
                  ),
                  child:
                  Center(
                    child: Text("لتالي",style: TextStyle(fontSize: 19, fontFamily: 'cario',
                        color: Colors.white ),),
                  )

              ),
            ],
          ),
        )

      ) ,
    );
  }
}
