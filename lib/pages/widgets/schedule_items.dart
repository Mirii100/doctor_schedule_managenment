
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleItems extends StatelessWidget {
  const ScheduleItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10,offset: Offset.zero,color: Colors.grey.withOpacity(0.2),)]),
      child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Column(
        crossAxisAlignment: CrossAxisAlignment.start,children: [Text("Dr.${schedules}")],
      )],)],),
    );
  }
}
