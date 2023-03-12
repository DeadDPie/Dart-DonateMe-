import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ДОБРО \nПОЖАЛОВАТЬ',
                  style: TextStyle(fontFamily: 'SourceSans',
                      color: Color.fromRGBO(106, 62, 112, 1.0), fontSize: 26.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text('ПРЕЖДЕ ЧЕМ МЫ НАЧНЁМ...',
                  style: TextStyle(color: Color.fromRGBO(140, 104, 144, 1.0))),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                child: OutlinedButton(
                    onPressed: _buttoniamchild,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(142, 125, 190, 1.0),
                        side: const BorderSide(width: 3.0, color: Colors.white),
                        minimumSize: const Size(250, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: const Text("Я РЕБЁНОК",
                        style: TextStyle(color: Colors.white, fontSize: 14.0))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                child: OutlinedButton(
                    onPressed: _buttoniamparent,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(156, 194, 186, 1.0),
                        side: const BorderSide(width: 3.0, color: Colors.white),
                        minimumSize: const Size(250, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: const Text("Я РОДИТЕЛЬ",
                        style: TextStyle(color: Colors.white, fontSize: 14.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _buttoniamchild() {}

  void _buttoniamparent() {}
}
