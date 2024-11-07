import 'package:doctor_schedule/pages/doctorHomescreen.dart';
import 'package:doctor_schedule/pages/widgets/schedule_screen.dart';
import 'package:doctor_schedule/screens/models/schedule.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex=0;
  final List pages=[
    const Doctorhomescreen(),
    const Scaffold(),
    const ScheduleScreen(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,backgroundColor: Colors.white,
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.deepPurple,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value){
            setState(() {
              selectedIndex=value;

            });
          },
          items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home,),label: "home"),
        const BottomNavigationBarItem(icon: Icon(Icons.message,),label: "message"),
        const BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,),label: "calendar"),
        const BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "setting"),

      ]),
      body: pages[selectedIndex],
    );
  }
}
