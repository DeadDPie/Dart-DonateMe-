import 'package:flutter/material.dart';

 //void main() {
   //runApp(EverythingIsDoneScreen());
 //}

class EverythingIsDoneScreen extends StatelessWidget {
  const EverythingIsDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EverythingIsDoneScreen',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline_rounded,//check_rounded
                size: 270.0,
                color: Color.fromRGBO(106, 62, 112, 1.0),
              ),

              const Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                    'НА СЕГОДНЯ ВСЁ',
                    style: TextStyle(fontFamily: 'SourceSans',
                        height: 1,
                        color: Color.fromRGBO(106, 62, 112, 1.0),
                        fontSize: 36.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(80, 60, 80, 40),
                child: OutlinedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(156, 194, 186, 1.0),
                        side: const BorderSide(width: 3.0, color: Colors.white),
                        minimumSize: const Size(240, 65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: const Text('НА ГЛАВНЫЙ ЭКРАН',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0, fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal
                        ))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}