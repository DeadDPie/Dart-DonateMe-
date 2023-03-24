import 'package:flutter/material.dart';

 void main() {
   runApp(const ProfileChangeForm());
 }
class ProfileChangeForm extends StatelessWidget{
  const ProfileChangeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно профиля пользователя',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // TextButton(//если будем реализацию с пикчей делать, то раскомментить
              //     onPressed: (){},
              //     child: const Text('ИЗМЕНИТЬ',
              //         style: TextStyle(
              //             color: Color.fromRGBO(116, 56, 113, 1.0),
              //             fontSize: 14.5,
              //             fontWeight: FontWeight.w400,))
              // ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 190, 25, 9),
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
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outlined),
              label: 'Задания',
              backgroundColor: Color.fromRGBO(116, 56, 113, 1.0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Что-то',
              backgroundColor: Color.fromRGBO(203, 52, 195, 1.0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Настройки',
              backgroundColor: Color.fromRGBO(146, 106, 86, 1.0),
            ),
          ],
          selectedItemColor: const Color.fromRGBO(194, 59, 187, 1.0),
          //onTap: _onItemTapped сдеалйте такую функцию или что-то подобное
        ),
      ),
    );
  }
}