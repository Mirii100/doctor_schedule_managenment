import 'package:doctor_schedule/pages/widgets/doctor_details.dart';
import 'package:doctor_schedule/pages/widgets/list_of_doctors.dart';
import 'package:flutter/material.dart';

import '../screens/models/doctor.dart';
import '../screens/models/symptom.dart';

class Doctorhomescreen extends StatefulWidget {
  const Doctorhomescreen({super.key});

  @override
  State<Doctorhomescreen> createState() => _DoctorhomescreenState();
}

class _DoctorhomescreenState extends State<Doctorhomescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        headerParts(),
SizedBox(height: 20,),
        clinicAndHomeVisit(),
        SizedBox(height: 30,),
        Padding(padding: EdgeInsets.symmetric(horizontal:15 ),child: Text("What are your symptoms",style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold,letterSpacing: -.5,color: Colors.black38, ),),
        ),
       SizedBox(height: 15,) ,
        SingleChildScrollView(scrollDirection: Axis.horizontal,physics: BouncingScrollPhysics(),child: Row(
          children: [...List.generate(
            symptoms.length, (index)=>Padding(padding: index==0?EdgeInsets.only(left: 15,right: 15):EdgeInsets.only(right: 15),
          child: Container(padding: EdgeInsets.symmetric(horizontal:18,vertical: 15 ),decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1),borderRadius: BorderRadius.circular(12),
          ),
child: Row(children: [CircleAvatar(radius: 10,backgroundImage: AssetImage(symptoms[index].image),),SizedBox(width: 10,),Text(symptoms[index].label,style: TextStyle(fontSize: 15,color: Colors.black38, ),),],
),
          ),
          )
            ,),],
        ),),
        SizedBox(height: 35,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Text("famous doctors",style: TextStyle(fontSize: 22,color: Colors.black,letterSpacing: -.5,fontWeight: FontWeight.w500),),
        ),
        Expanded(child: SingleChildScrollView(physics:BouncingScrollPhysics() ,padding: EdgeInsets.all(15),child: Wrap(runSpacing: 15,spacing: 15,children: [
          ...List.generate(doctors.length, (index)=>GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>DoctorDetails(doctor: doctors[index],),));
          },child: ListOfDoctors(doctor: doctors[index],),),),
        ],),)),
      ],
    ));
  }

  Padding clinicAndHomeVisit() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),child: Row(
        children: [
         Expanded(child: Container(padding: EdgeInsets.all(15),decoration: BoxDecoration(
           boxShadow: [BoxShadow(color: Colors.purple.withOpacity(0.2),blurRadius: 15,spreadRadius: 5,offset:Offset(-0, 10),
           ),],
           color: Colors.purple,borderRadius: BorderRadius.circular(15),

         ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             
             children: [
               Icon(Icons.add_circle,
               size: 60,color: Colors.white,),SizedBox(height: 40,),Column( crossAxisAlignment: CrossAxisAlignment.start,children: [Text("my clinic  visitation days",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: -1),),
               Text("make an appointment",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 0),),],),
             ],
           ),
         ),) ,
          SizedBox(width: 15,),
          Expanded(child: Container(padding: EdgeInsets.all(15),decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 12,spreadRadius: 5,offset:Offset(-0, 10),
            ),],
            color: Colors.white,borderRadius: BorderRadius.circular(15),

          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(decoration: BoxDecoration(color: Colors.purple.withOpacity(0.15),shape: BoxShape.circle,),padding: EdgeInsets.all(12),child: Icon(Icons.home_filled,size: 30,color: Colors.purple,),)
                ,SizedBox(height: 40,),Column( crossAxisAlignment: CrossAxisAlignment.start,children: [Text("home visit",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: -1),),
                  Text("make a call to the doctor",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 0),),],),
              ],
            ),
          ),) ,
        ],
      ),);
  }

  Padding headerParts() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("Alexander mirii",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(width: 10,),Image.asset("images/image1.png",height: 40,width: 40,),

            ],
          ),
CircleAvatar(radius: 28,backgroundImage: NetworkImage("http//"),),
      ],),

      );
  }
}
