import 'package:doctor_schedule/screens/models/doctor.dart';
import 'package:flutter/material.dart';

class ListOfDoctors extends StatelessWidget {
  final Doctor doctor;
  const ListOfDoctors({super.key,required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),width: MediaQuery.of(context).size.width/2.24,decoration: BoxDecoration(
      color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2,),blurRadius: 10,),],
    ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [CircleAvatar(radius: 45,backgroundColor: Color(doctor.color),backgroundImage: NetworkImage(doctor.image),),
      SizedBox(height: 20,),Text("Dr . ${doctor.name}",style: TextStyle(fontSize: 18,letterSpacing: -.5,color: Colors.black,fontWeight:FontWeight.bold ),),
       SizedBox(height:5 ,),Text(doctor.specialist,style: TextStyle(color:Colors.black,letterSpacing: 0,fontWeight: FontWeight.bold ,),),
      SizedBox(height: 20,),Container(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),decoration: BoxDecoration(color: Colors.orange[50],borderRadius: BorderRadius.circular(15),),child: Row(mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.star,color: Colors.orange,size: 20,),SizedBox(width:5 ,),Text(rate(doctor).toStringAsFixed(1),),
          ],
        ),),
      ],),
    );
  }

  rate(Doctor doctor) {}
}
