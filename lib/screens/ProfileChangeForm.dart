import 'package:flutter/material.dart';

// void main() {
//   runApp(const ProfileChangeForm());
// }
class ProfileChangeForm extends StatelessWidget{
  const ProfileChangeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно профиля пользователя',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(200, 154, 132, 1.0),
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: const Icon(
                  Icons.menu,
                  color: Color.fromRGBO(116, 56, 113, 1.0)
              ),
              onPressed:() => Navigator.pop(context, false)),//нужно изменить работу иконки при нажатии
          centerTitle: true,
        ),
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: (){},
                  child: const Text('ИЗМЕНИТЬ',
                      style: TextStyle(
                          color: Color.fromRGBO(116, 56, 113, 1.0),
                          fontSize: 14.5,
                          fontWeight: FontWeight.w400,))
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 70, 25, 9),
                  child: TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 5)),
                      fillColor: const Color.fromRGBO(255, 255, 255, 1.0),
                      filled: true,
                      labelText: 'ИМЯ ПОЛЬЗОВАТЕЛЯ'
                  ))
              ),

              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 9),
                  child:TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 5)),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'НИК ПОЛЬЗОВАТЕЛЯ'
                  ))
              ),

              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 9),
                  child:TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 5)),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'НОМЕР ТЕЛЕФОНА ПОЛЬЗОВАТЕЛЯ'
                  ))
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 100, 100, 5),
                child: OutlinedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(156, 194, 186, 1.0),
                        minimumSize: const Size(240, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: const Text('ГОТОВО',
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