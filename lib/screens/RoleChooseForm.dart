import 'package:flutter/material.dart';
import 'package:donate_me/screens/RegistrationForm.dart';

class RoleChooseForm extends StatelessWidget {
  const RoleChooseForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно_Выбора_Роли',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(200, 154, 132, 1.0),
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(116, 56, 113, 1.0),
              ),
          onPressed:() => Navigator.pop(context, false))
        ),
        backgroundColor: Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 15),
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        const RegistrationForm()));
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(142, 125, 190, 1.0),
                      side: const BorderSide(width: 3.0, color: Colors.white),
                      minimumSize: const Size(300, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )),
                    child: const Text('Я РЕБЁНОК!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0, fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal
                      )),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 15),
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        const RegistrationForm()));
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(156, 194, 186, 1.0),
                      side: const BorderSide(width: 3.0, color: Colors.white),
                      minimumSize: const Size(300, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )),
                    child: const Text('Я РОДИТЕЛЬ!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0, fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal
                      )),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}