
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/models/schedule.dart';

class ScheduleItems extends StatelessWidget {
  final Schedule schedule;
  const ScheduleItems({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10,offset: Offset.zero,color: Colors.grey.withOpacity(0.2),)]),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Column(
        crossAxisAlignment: CrossAxisAlignment.start,children: [Text("Dr.${schedules.doctor.name}",style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: -.5,fontWeight: FontWeight.bold,),
      ),SizedBox(height:2 ,),Text(schedule.doctor.specialist,style: TextStyle(color: Colors.grey,fontSize: 15,letterSpacing: -.5,),),
      ],
      ),
      Container(width: 50,height: 50,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(schedule.doctor.image),),shape: BoxShape.circle,color: Color(schedule.doctor.color).withOpacity(0.5),

      ),),
      ]
        ,
      ),
        SizedBox(height: 10,),
        Divider(color: Colors.black12,),SizedBox(height: 10,),
        Row(children: [Row(children: [
          Icon(Icons.calendar_month,color: Colors.grey,),SizedBox(width: 5,),
         Text(DateFormat("d/mm/y").format(schedule.time),style: TextStyle(color: Colors.black,letterSpacing: -.5,),) ,
        ],
        ),SizedBox(width: 15,),Row(children: [Icon(Icons.access_time_filled,color:Colors.grey ,),
        SizedBox(width: 5,),Text(DateFormat("jm").format(schedule.time),style: TextStyle(color: Colors.black,letterSpacing: 0,),)],),
          SizedBox(width: 15,),Row(children: [Container(height: 10,width: 10,decoration: BoxDecoration(
           shape: BoxShape.circle,color: Colors.green,
          ),
          ),SizedBox(width: 5,),Text(schedule.status,style: TextStyle(color: Colors.black,letterSpacing: 0,),
          ),
          ],
          ),
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(height: 50,width: MediaQuery.of(context).size.width/2.5,decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),borderRadius: BorderRadius.circular(12),
            ),child: Center(child: Text("cancel",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),),
            ),
              Container(height: 50,width: MediaQuery.of(context).size.width/2.5,decoration: BoxDecoration(
                color: Colors.purple,borderRadius: BorderRadius.circular(12),
              ),child: Center(child: Text("reschedule",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),),
              ),
          ],),
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 50,width: MediaQuery.of(context).size.width/2.5,decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),borderRadius: BorderRadius.circular(12),
              ),child: Center(child: Text("cancel",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),),
              ),
              Container(height: 50,width: MediaQuery.of(context).size.width/2.5,decoration: BoxDecoration(
                color: Colors.purple,borderRadius: BorderRadius.circular(12),
              ),child: Center(child: Text("reschedule",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),),
              ),
            ],),
        ],),
      ],
      ),
    );
  }
}
