import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget{
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно_Регистрации',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(200, 154, 132, 1.0),
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back, 
                color: Color.fromRGBO(116, 56, 113, 1.0)
              ),
          onPressed:() => Navigator.pop(context, false)),
          centerTitle: true,
          title: const Text('ПРИВЕТСТВУЕМ!',
          style: TextStyle(
            color: Color.fromRGBO(141, 80, 58, 1.0),
            fontSize: 25.0, fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal
          ),
          ),
       ),
        backgroundColor: Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 70, 25, 9),
                child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 5)),
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  filled: true,
                  labelText: 'КАК К ВАМ ОБРАЩАТЬСЯ?'
                ))
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 9),
                child:TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.white,
                          width: 5)),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'ВЫБЕРИТЕ СЕБЕ НИК'
                ))
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 9),
                child:TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width: 5)),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'ПРИДУМАЙТЕ ПАРОЛЬ',
                  hintText: '(НЕ МЕНЕЕ 8 СИМВОЛОВ И ХОТЯ БЫ ОДНА ЦИФРА)',
                  hintStyle: const TextStyle(fontSize: 12,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic
                  )
                ))
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                child: OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(134, 194, 186, 1.0),
                    side: const BorderSide(width: 3.0, color: Colors.white),
                    minimumSize: Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )),
                  child: const Text('ПРОДОЛЖИТЬ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0, fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal
                    )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}