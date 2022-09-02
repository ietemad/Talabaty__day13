import 'package:flutter/material.dart';
import 'package:talabaty/one/b%20home.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await Future.delayed( const Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }
  @override

  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xfff6323e),

      body: Center(
        child: Image.asset("image/tala.png"),
      )

    );
  }
}
