
import 'package:doctor_schedule/screens/models/review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewItems extends StatelessWidget {
  final Review review;
  const ReviewItems({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),width: MediaQuery.of(context).size.width*0.8,decoration: BoxDecoration(
      color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow:[BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 10),
    ],
    ),
      child: Column(crossAxisAlignment:CrossAxisAlignment.start ,mainAxisSize:MainAxisSize.max,children: [
        Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
          CircleAvatar(radius: 25,backgroundColor: Color(review.color).withOpacity(0.4),backgroundImage: NetworkImage(review.image),),SizedBox(width: 10,),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Text(review.fullname,style: TextStyle(color: Colors.black,fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.bold),),
          Text("1 day ago " ,style:TextStyle(color: Colors.grey,letterSpacing: 0,fontWeight: FontWeight.normal,),),
          ],),),
          Container(padding: EdgeInsets.all(7),decoration: BoxDecoration(color: Colors.orange[50],borderRadius: BorderRadius.circular(15),
          ),child: Row(mainAxisSize: MainAxisSize.min,children: [
            Icon(Icons.star,color:Colors.orange ,size:20 ,),SizedBox(width: 5,),
            Text(review.rate.toStringAsFixed(1),style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color:Colors.black, ),
            ),
          ],),
          ),
      ],
      ),
        SizedBox(height: 20,),
        Text(review.comment,overflow: TextOverflow.ellipsis,maxLines: 2,style:TextStyle(fontSize: 15,letterSpacing: 0,fontWeight:FontWeight.w500,color:Colors.black  ) ,),
      ],
      ),
    );
  }
}
