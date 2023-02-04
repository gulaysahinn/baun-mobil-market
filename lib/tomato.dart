import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tomato extends StatelessWidget {

  final String productName;
  final String url;
  final String price;
  const Tomato({Key? key, required this.productName, required this.url, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(productName,style: TextStyle(fontSize: 25),),
            SizedBox(height: 100,
            child: Image.asset(url),
            ),
            SizedBox(height: 15),
            Text(price+" Tl", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
