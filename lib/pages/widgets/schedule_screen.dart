import 'package:doctor_schedule/pages/widgets/schedule_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/models/schedule.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Text("schedules",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
        ),SizedBox(height: 20,),
        Expanded(child: DefaultTabController(length: 3, child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Padding(padding: EdgeInsets.symmetric(horizontal:15 ),child: Container(
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1),borderRadius: BorderRadius.circular(5),
            ),child: TabBar(
            indicatorColor: Colors.purple,
              unselectedLabelColor:Colors.black.withOpacity(0.5) ,
              labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,),
              labelColor: Colors.white,
              indicator: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(10)),
              tabs: [
              ...List.generate(tabs.length, (index)=>Padding(padding: EdgeInsets.symmetric(horizontal: 13,),child: Tab(text: tabs[index],),),),
          ]),
          ),),
          SizedBox(height: 20,),Expanded(child: TabBarView(children: [
            SingleChildScrollView(physics: BouncingScrollPhysics(),padding: EdgeInsets.symmetric(horizontal: 15),child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text("nearest visit",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing:-.4, ),),
              SizedBox(height:20 ,),
              ...List.generate(nearest.length, (index)=>Padding(padding: EdgeInsets.only(bottom: 15),child: ScheduleItems(schedule:nearest[index] ,),
              ),
              ),SizedBox(height: 10,),
              Text("Future visit",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing:-.4, ),),
              SizedBox(height:20 ,),
              ...List.generate(futures.length, (index)=>Padding(padding: EdgeInsets.only(bottom: 15),child: ScheduleItems(schedule: futures[index],),))

            ],),),
            Center(child: Text("completed",style: TextStyle(fontSize: 24,color: Colors.purple,),),),
            Center(child: Text("canceled",style: TextStyle(fontSize: 24,color: Colors.purple,),),),
          ],),),

          
        ],
        ),),),
      ],));
  }
}
