import 'package:flutter/material.dart';

class d13 extends StatefulWidget {
  const d13({Key? key}) : super(key: key);

  @override
  State<d13> createState() => _d13State();
}

class _d13State extends State<d13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SafeArea(
              child: Text("ghghgh")
          ),
          SizedBox(height: 70,),


          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.cyan,
                labelText: 'Enter your username',
            hintText: 'someone@gmail.com',
            icon: Icon(Icons.account_circle_outlined),
            prefixIcon: Icon(Icons.account_circle_outlined),
            enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.brown,
             width: 2
            ),
                borderRadius: BorderRadius.circular(50)
                ),
            focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
               )
            ),
            style: TextStyle(color: Colors.blueAccent),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
          ),
            SizedBox(height: 30,),

            TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green,

    errorStyle: TextStyle(color: Colors.white),
    labelStyle: TextStyle(color: Colors.pink),
    errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green),
    ),
    focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    ),
    enabledBorder:OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown),
    ),
    focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(color: Colors.purple),
    )
            ),
    style: TextStyle(color: Colors.blueAccent),

    )


        ],
      ),


    );
  }
}
