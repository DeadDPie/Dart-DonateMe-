import 'package:flutter/material.dart';
import 'package:donate_me/screens/RoleChooseForm.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;


class AuthorizationForm extends StatefulWidget {
  const AuthorizationForm({Key? key}) : super(key: key);

  @override
  AuthorizationFormState createState() => AuthorizationFormState();
}

class AuthorizationFormState extends State<AuthorizationForm> {
  final controllerNickname = TextEditingController();
  final controllerPassword = TextEditingController();

  void _getUserData() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/login_data.txt';
    final File loginFile = File(filePath);
    final isFileExist = await loginFile.exists();
    if (isFileExist) {
      loginFile.writeAsString(controllerNickname as String);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно_Авторизации',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                    'ДОБРО \nПОЖАЛОВАТЬ',
                    style: TextStyle(fontFamily: 'SourceSans',
                        height: 1,
                        color: Color.fromRGBO(106, 62, 112, 1.0),
                        fontSize: 42.0,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center),
              ),
              const Text(
                  'ПРЕЖДЕ ЧЕМ МЫ НАЧНЁМ...',
                  style: TextStyle(
                      color: Color.fromRGBO(140, 104, 144, 1.0),
                      fontSize: 14.5, fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic)),

              Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 5),
                  child: TextField(
                    controller: controllerNickname,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 5
                          )),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'ВВЕДИТЕ НИК',
                      hintStyle: const TextStyle(fontSize: 14.5,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic)
                  )),
              ),

              Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 5),
                  child: TextField(
                      controller: controllerPassword,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 5
                          )),
                      fillColor: const Color.fromRGBO(255, 255, 255, 1.0),
                      filled: true,
                      hintText: 'ВВЕДИТЕ ПАРОЛЬ',
                      hintStyle: const TextStyle(fontSize: 14.5,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic)
                  ),
                      obscureText: true
                  ),
              ),

              TextButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                      const RoleChooseForm()));
                    },
                  child: const Text('У МЕНЯ НЕТ АККАУНТА',
                      style: TextStyle(
                          color: Color.fromRGBO(146, 106, 86, 1.0),
                          fontSize: 14.5,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline))
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(100, 5, 100, 5),
                child: OutlinedButton(
                    onPressed: (){
                      _getUserData();
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(156, 194, 186, 1.0),
                        side: const BorderSide(width: 3.0, color: Colors.white),
                        minimumSize: const Size(240, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: const Text('ПРОДОЛЖИТЬ',
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