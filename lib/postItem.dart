import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
            radius: 30,backgroundColor: Colors.black,
            child: Icon(Icons.person,
              color: Colors.white,size: 35,)),
            SizedBox(width: 10,),
            Column(
              children: [
                Text('Owner',style: TextStyle(fontSize: 20,
                    fontWeight:FontWeight.w900 ),),
                Row(
                  children: [
                    Text('3h',style: TextStyle(fontSize: 20,
                        fontWeight:FontWeight.w400 ),),
                    SizedBox(width: 10,),
                    Icon(Icons.public,
                      color: Colors.black,size: 20,)
                  ],
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20,),
        Text('My post',style:
        TextStyle(fontSize: 30,fontWeight: FontWeight.w600 ),),
        SizedBox(height: 35,),
        Row(
          children: [
            Text('100 ',),
            Image.asset('assets/images/like.jpg',width: 50,height: 50,),
            Spacer(),
            Text('100 comment'),
          ],
        ),
        Divider(thickness: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imageAndText(image: 'assets/images/singleLike.jpg', text: 'Like'),
            imageAndText(image: 'assets/images/comment.jpg', text: 'Comment'),
            imageAndText(image: 'assets/images/share.png', text: 'Share'),
          ],
        ),
      ],
    );
  }

 Widget imageAndText({required String image,required String text}){
    return Row(
      children: [
        Image.asset(image,width: 35,height: 35,),
        Text(text,style:
        TextStyle(fontSize: 20),),
      ],
    );
  }
}

