
import 'package:doctor_schedule/pages/widgets/review_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/models/doctor.dart';

class DoctorDetails extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetails({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.purple,extendBody: true,body: SafeArea(child: Column(children: [
  Column(crossAxisAlignment: CrossAxisAlignment.center,children: [Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [GestureDetector(onTap: (){
      Navigator.pop(context);
  },child: Icon(Icons.arrow_back_ios_new,color: Colors.white,),),
  Icon(Icons.more_vert,color: Colors.white,)],
  ),),CircleAvatar(radius: 45,backgroundColor: Color(doctor.color,),backgroundImage: NetworkImage(doctor.image),),SizedBox(height: 10,),Text("Dr.${doctor.name}",style: TextStyle(fontSize:20 ,fontWeight:FontWeight.bold,color: Colors.white,letterSpacing: 1 ),),Text(doctor.specialist,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: Colors.white54,letterSpacing: 0,),),
    SizedBox(height: 20,),Row(mainAxisSize: MainAxisSize.min,children: [
      CircleAvatar(radius: 30,backgroundColor: Colors.white.withOpacity(0.3),child: Icon(CupertinoIcons.phone_fill,color: Colors.white,),),SizedBox(width: 30,),
      CircleAvatar(radius: 30,backgroundColor: Colors.white.withOpacity(0.3),child: Icon(CupertinoIcons.chat_bubble_text_fill,color: Colors.white,),),],),
   SizedBox(height: 20,),Expanded(child: Container(padding: EdgeInsets.only(top: 20),width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.vertical(top: Radius.circular(15),),
    ),child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 15),child:Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Text("About doctor",style: TextStyle(fontSize: 18,color: Colors.black,letterSpacing: 0,fontWeight: FontWeight.bold,),),SizedBox(height: 10,),Text("Dr.${doctor.name} ${doctor.about}",textAlign:TextAlign.justify,maxLines: 2 ,style: TextStyle(fontSize: 17,height: 1.5,letterSpacing: 0,color: Colors.black),)],) ,),
    SizedBox(height: 30,),Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Row(children: [Text("reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black,letterSpacing: 0),),SizedBox(width: 10,),Icon(Icons.star,color: Colors.amber[800],),SizedBox(width: 5,),Text(rate(doctor).toStringAsFixed(1),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),SizedBox(width: 5,),
      Text("(${doctor.reviews.length})",style: TextStyle(color: Colors.grey,),),
      ],),Text("see all ",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.bold,)
        ,),

      ],),
      ),
      listOfReviews(),SizedBox(height: 20,),
    Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      Text("location",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight:FontWeight.bold,letterSpacing: -.5 ),),SizedBox(height: 20,),Row(children: [Container(padding: EdgeInsets.all(14),decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.purple.withOpacity(0.3),),child: Icon(Icons.location_on,color: Colors.purple,),),SizedBox(width: 15,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Text("Alexia Medical Clinic ",style: TextStyle(fontSize: 19,letterSpacing: -.5,color: Colors.black,fontWeight: FontWeight.bold,),),
      SizedBox(height: 5,),Text(doctor.location,style: TextStyle(color: Colors.grey),)],)],),
    ],),),
    ],),),
    ),],
  )
    ],),),
      bottomNavigationBar:Container(
        padding: EdgeInsets.all(15),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3),blurRadius: 5,),],color: Colors.white),child:Column(mainAxisSize: MainAxisSize.min,children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
Text("consolation price ",style: TextStyle(letterSpacing: 0,color: Colors.grey,),),
        Text("\$${doctor.price}",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
      ],),
      SizedBox(height: 20,),Container(padding: EdgeInsets.symmetric(vertical: 20),decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(12),),child: Center(child: Text("Boook Appointment",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold,),),),)],) ,
      ) ,
    );
  }

  SingleChildScrollView listOfReviews() {
    return SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: 10,),physics: BouncingScrollPhysics(),scrollDirection: Axis.horizontal,child: Row(children: [
      ...List.generate(doctor.reviews.length, (index)=>Padding(padding: index==0?EdgeInsets.only(left: 15,right: 15):EdgeInsets.only(right: 15),child:ReviewItems(review: doctor.reviews[index],) ,),)
    ],),);
  }

  rate(Doctor doctor) {}




}
