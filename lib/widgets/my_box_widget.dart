import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {

  final String productName;
  final String url;
  final String price;

  const MyBox({
    Key? key, required this.productName, required this.url, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20.0,)),
          /*boxShadow: [
            BoxShadow(color: Colors.amber,blurRadius: 2,spreadRadius: 10)
          ]*/
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(productName,
            style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                decoration: TextDecoration.underline),
          ),
          SizedBox(height: 10),
          SizedBox(
              height: 100,
              child: Image.asset(
                url,
              )),
          SizedBox(height: 10),
          Text(price+"Tl",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                decoration: TextDecoration.underline),
          ),
          SizedBox(height: 10),
        ],

      ),
    );
  }
}
