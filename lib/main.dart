import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Календарь 2022',
          style: TextStyle(
              fontSize: 35,
              fontFamily: 'fonts/Redressed-Regular.ttf',
              color: Colors.white70),
        ),
      ),

            body: Container(
        color: Colors.blueGrey,
                child: Center(
      child: ListView(
      children: [
        SizedBox(
        height: 200.0,
        width: double.infinity,
        child: Carousel(
          dotSize: 6.0,
          dotColor: Colors.blueGrey,
          dotSpacing: 15,
          images: [
            Image.asset(
              'image/images/v-yanvare-2022-goda.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/fevral-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/mart-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/aprel-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/may-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/iun-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/iul-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/avgust-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/sentiabr-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/oktiabr-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/noiyabr-2022.png',
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'image/images/dekabr-2022.png',
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      )
      ],
    ),
  ),

    //decoration: BoxDecoration(color: Colors.blueGrey,
    //borderRadius: BorderRadius.all(Radius.circular(15))),
    // child:
    // Image(
    //   image: AssetImage('image/images/fevral-2022.png'),
//
  )))
  );
}
