
import 'package:flutter/material.dart';
import 'package:sahmarket/price.dart';
import 'package:sahmarket/tomato.dart';
import 'package:sahmarket/url.dart';
import 'package:sahmarket/user.dart';
import 'package:sahmarket/widgets/my_box_widget.dart';

url dom=url(1,"assets/images/tomato2.png");
user domate=user(1, "Domates", "Çeri");
price domates=price(1,"18.99");

List<String> nameList=[
  domate.name,
  "Biber",
  "Patlıcan",
  "Kabak",
  "Salatalık",
  "Patates",
  "Biber",
  "Patlıcan",
  "Kabak",
  "Salatalık",
  "Patates",
];
List<String> nameList2=[
  domates.pricee,
  "17.99",
  "24.99",
  "16.95",
  "22.99",
  "14.99",
  "17.99",
  "24.99",
  "16.95",
  "22.99",
  "14.99",
];
List<String> nameList3=[
  dom.urle,
  "assets/images/biber.png",
  "assets/images/patlican.png",
  "assets/images/balkabak.png",
  "assets/images/salatalik2.png",
  "assets/images/patates.png",
  "assets/images/biber.png",
  "assets/images/patlican.png",
  "assets/images/balkabak.png",
  "assets/images/salatalik2.png",
  "assets/images/patates.png",
  
];

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        title: Text("SAH MANAV"),
      ),
      body: GridView.builder(
        itemCount: nameList.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
              return Tomato(productName: nameList[index], url: nameList3[index], price: nameList2[index]);
            }));
              
            },
            child: MyBox(
              url:nameList3[index],
              price: nameList2[index],
              productName: nameList[index],
            ),
          ),
        );
      })




      /*ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (context,index){
        return Center(
          child: MyBox(
              url:nameList3[index],
              price: nameList2[index],
              productName: nameList[index],
          ),
        );
      }),*/
    );
  }
}


