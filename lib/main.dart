import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Главное_окно',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(241, 224, 203, 1.0),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    'ДОБРО \nПОЖАЛОВАТЬ',
                    style: TextStyle(fontFamily: 'SourceSans', height: 1,
                      color: Color.fromRGBO(106, 62, 112, 1.0),
                        fontSize: 42.0, fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center),
                ),
                const Text(
                  'ПРЕЖДЕ ЧЕМ МЫ НАЧНЁМ...',
                  style: TextStyle(
                    color: Color.fromRGBO(140, 104, 144, 1.0),
                    fontSize: 14.5, fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic)),

                Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 5),
                  child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 5
                      )),
                    hintText: 'ВВЕДИТЕ НИК',
                    hintStyle: const TextStyle(fontSize: 14.5,
                    fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
                    fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                    filled: true
                  ))
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 5),
                  child: TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 5
                        )),
                      hintText: 'ВВЕДИТЕ ПАРОЛЬ',
                      hintStyle: const TextStyle(fontSize: 14.5,
                      fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
                      fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                      filled: true
                  ),
                      obscureText: true
                  )
                ),


                TextButton(
                    onPressed: _gotoRegisration,
                    child: const Text('У МЕНЯ НЕТ АККАУНТА',
                    style: TextStyle(
                      color: Color.fromRGBO(146, 106, 86, 1.0),
                      fontSize: 14.5, fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline))
                ),
                
                Padding(
                    padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
                  child: OutlinedButton(
                    onPressed: _button1,
                    style: OutlinedButton.styleFrom(

                      backgroundColor: Color.fromRGBO(156, 194, 186, 1.0),
                      side: const BorderSide(width: 3.0, color: Colors.white),
                      minimumSize: const Size(240, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    )),
                    child: const Text('ПРОДОЛЖИТЬ',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontSize: 20.0, fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal
                    ))),
                ),
              ],
            ),
          ),
      ),
    );
  }

  void _gotoRegisration() {}

  void _button1() {}
}