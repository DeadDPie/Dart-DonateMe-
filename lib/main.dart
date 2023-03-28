import 'package:donate_me/screens/AddTaskScreen.dart';
import 'package:donate_me/screens/AuthorizationForm.dart';
import 'package:donate_me/screens/EverythingIsDoneScreen.dart';
import 'package:donate_me/screens/ProfileChangeForm.dart';
import 'package:donate_me/screens/ChildTasksScreen.dart';
import 'package:donate_me/screens/RegistrationForm.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainFormDart(),
    );
  }
}

class MainFormDart extends StatefulWidget {
  const MainFormDart({super.key});

  @override
  State<MainFormDart> createState() => _MainFormDartState();
}

class _MainFormDartState extends State<MainFormDart> {
  int _currentTab = 3;
  late List<Widget> pages;
  late Widget currentPage;

  @override
  void initState() {
    var one = ChildTasks();
    var two = AddTaskScreen();
    var three = EverythingIsDoneScreen();
    var four = AuthorizationForm();
    var five = ProfileChangeForm();
    pages = [one, two, three, four, five];

    currentPage = four;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(200, 154, 132, 1.0),
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Home',
            backgroundColor: Color.fromRGBO(119, 60, 114, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Archive',
            backgroundColor: Color.fromRGBO(119, 60, 114, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag_circle),
            label: 'Match',
            backgroundColor: Color.fromRGBO(119, 60, 114, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Family',
            backgroundColor: Color.fromRGBO(119, 60, 114, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color.fromRGBO(119, 60, 114, 1.0),
          ),
        ],
        currentIndex: _currentTab,
        selectedItemColor: const Color.fromRGBO(241, 227, 211, 1.0),
        onTap: (int index) {
          setState(() {
            _currentTab = index;
            currentPage = pages[index];
          });
        }
      ),
    );
  }
}



