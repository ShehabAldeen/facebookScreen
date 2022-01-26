import 'package:assigment1/postItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomeScreen extends StatelessWidget {
  static const String routName='HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text('Home',style:
        TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context,index){
                    return Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/facebookStory.jpg'),
                        ),
                        CircleAvatar(
                          radius: 18,
                            child: Icon(Icons.person,
                              color: Colors.white,size: 25,)),
                        Positioned(
                          bottom: 0,left: 7,
                            child: Text('Owner',style:
                            TextStyle(color: Colors.white,
                            fontSize: 20),)),
                      ],
                    );
                  },
                  separatorBuilder:(BuildContext context,index)=>SizedBox(width: 20,)
                  , itemCount:10 ),
            ),
            SizedBox(height: 25,),
            Expanded(
              flex: 8,
              child: ListView.separated(
                  itemBuilder:(BuildContext context,index)=>PostItem(),
                  separatorBuilder:(BuildContext context,index)=>Divider(thickness: 4,),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
