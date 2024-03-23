import 'package:flutter/material.dart';
import 'detailpage.dart';
import 'list.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  @override
  Widget build(BuildContext context) {
    var list;
    var l1;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('PixelsCo.',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(Icons.shopping_bag_outlined,size: 25,color: Colors.white,),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: Container(height: 200,width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Text('New Vintage\nCollection',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 10),
                        Container(height: 40,width: 130,
                          child: Center(child: Text('Explore now',style: TextStyle(color: Colors.white,fontSize: 20),)),
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors: [Color(0xff3a3e46),Color(0xff25282d)])),)
                      ],
                    ),
                    Image.asset('assets/image 276.png',fit: BoxFit.fill,)
                  ],

                ),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors: [Color(0xff3a3e46),Color(0xff25282d)])),
            ),
          ),
          SizedBox(height: 10),
          Text('     Popular',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: list.generate(l1.length, (index1) => GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>  detilpage()
                  )
                  );
                  // list = l1;
                  // arguments: l1[index1];
                  // var i =index1;
                },
                child: thinkui(l1[index1]['Image'], l1[index1]['Name'],l1[index1]['Price'],),
              ))
            ),
          ),
        ],
      ),
    );
  }
}
Widget thinkui(String image,String name,int price)
{ return
  Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(height: 260, width: 180,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [Color(0xff3a3e46), Color(0xff25282d)])),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Icon(Icons.star, size: 20, color: Colors.yellow,),
                Text(' 4.5', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(child: Container(height: 150, width: 150,
            child: Image.asset('assets/', fit: BoxFit.fill,),
          )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Text('Name!', style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20),),
          ),
          Row(
            children: [
              Text("  $price", style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),),
              SizedBox(width: 60),
              Container(height: 30, width: 40,
                child: Icon(
                  Icons.arrow_forward, size: 20, color: Colors.black87,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [Color(0xff3a3e46), Color(0xff25282d)])),
              )
            ],
          ),
        ],
      ),
    ),
  );
}