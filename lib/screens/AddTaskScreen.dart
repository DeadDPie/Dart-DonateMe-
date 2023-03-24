import 'package:flutter/material.dart';

void main() {
runApp(AddTaskScreen());
}

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EverythingIsDoneScreen',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 80, 200, 5),
                child: Text(
                  'ЗАДАНИЕ',
                  style: TextStyle(
                      fontFamily: 'SourceSans',
                      color: Color.fromRGBO(116, 56, 113, 1.0),
                      fontSize: 23.5,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(37, 0, 37, 10),
                elevation: 5,
                child: Container(
                  width: 300,
                  height: 290,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorHeight: 23,
                        style: const TextStyle(fontSize: 23),
                        maxLines: 9,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: "Введите задание здесь",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 23,
                              fontWeight: FontWeight.normal,
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 200, 0),
                child: Text(
                  'СУММА',
                  style: TextStyle(
                      fontFamily: 'SourceSans',
                      color: Color.fromRGBO(116, 56, 113, 1.0),
                      fontSize: 23.5,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(37, 0, 37, 10),
                elevation: 5,
                child: Container(
                  width: 300,
                  height: 70,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorHeight: 22,
                        style: const TextStyle(fontSize: 22),
                        maxLines: 1,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                            hintText: "Введите задание здесь",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.normal,
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 60, 50, 0),
                child: OutlinedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                        elevation: 5,//тень делает. нужно или убрать?
                        backgroundColor: const Color.fromRGBO(156, 194, 186, 1.0),
                        side: const BorderSide(width: 3.0, color: Colors.white),
                        minimumSize: const Size(240, 65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: const Text('ДОБАВИТЬ ЗАДАНИЕ',
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