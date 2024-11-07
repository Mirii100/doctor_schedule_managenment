import 'package:doctor_schedule/screens/models/doctor.dart';

class Schedule {


  late final String status, time;

  final List<Doctor> doctor;
  Schedule({

    required this.status,

    required this.doctor,

    required this.time,


  });
  List<Schedule> schedules=[
 Schedule(status: "status", doctor: List.empty(), time: ""),
  Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
    Schedule(status: "status", doctor: List.empty(), time: ""),
];

  List<String>tabs=['upcomming','completed','canceled'];

List<Schedule>nearest=schedules
    .where((element)=>
DateFormat('d/MM/y').format(element.time)==DateFormat('d/MM/y').format(DateTime.now(),),
)
    .toList();
List<Schedule> futures=schedules
  .where((element)=>
DateFormat('d/MM/y').format(element.time)!=DateFormat('d/MM/y').format(DateTime.now(),),
)
      .toList();

  static DateFormat(String s) {}
