import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),child: Text("schedules",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
        ),SizedBox(height: 20,),
        Expanded(child: DefaultTabController(length: 3, child: Column(children: [
          Padding(padding: EdgeInsets.symmetric(horizontal:15 ),child: Container(
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1),borderRadius: BorderRadius.circular(5),
            ),child: TabBar(tabs: [
              ...List.generate(tabs.length, (index)=>)Padding(padding: EdgeInsets.symmetric(horizontal: 13,),child: Tab(text: Text(data),),)
          ]),
          ),),
        ],
        ),),),
      ],));
  }
}
