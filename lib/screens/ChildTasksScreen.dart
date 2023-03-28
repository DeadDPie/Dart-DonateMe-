import 'package:flutter/material.dart';

// void main() {
//   runApp(ChildTasks());
// }

class ChildTasks extends StatefulWidget {
  ChildTasksScreen createState() => ChildTasksScreen();
}

class ChildTasksScreen extends State<ChildTasks> {
  List tasks = [
    "cat",
    'poop',
    'abrakadabra',
    'eat gorilla',
    "cook",
    '2poop',
    'prprp',
    'eat garlic'
  ];
  Color _color1 = const Color.fromRGBO(199, 199, 199, 1.0);
  Color _color2 = const Color.fromRGBO(62, 255, 7, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(241, 227, 211, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 200, 5),
                child: Text(
                  'ЗАДАНИЯ',
                  style: TextStyle(
                      color: Color.fromRGBO(116, 56, 113, 1.0),
                      fontSize: 23.5,
                      fontWeight: FontWeight.w400),
                ),
              ),
              _list(),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(15), //отступы текста от карты
                    child: Center(
                      child: Text(
                        'ВАНЯ, ТОЛЬКО ПОПРОБУЙ РАЗБИТЬ СЕРВАНТ!',
                        style: TextStyle(
                          fontSize: 21, color: Color.fromRGBO(126, 88, 131, 1.0),
                          fontWeight: FontWeight.w500, fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 50),
                child: OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(142, 125, 190, 1.0),
                    side: const BorderSide(width: 3.0, color: Colors.white),
                    minimumSize: const Size(300, 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )),
                  child: const Text('ВЫПОЛНИЛ!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0, fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal
                    ),
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var flag = 0;
  _list() => Expanded(
        child: Card(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 40),
          child: Scrollbar(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: IconButton(
                        icon: Icon(Icons.check, size: 30.0),
                        color: _color1,
                        onPressed: () {
                          setState(() {
                            _color1 = _color2;
                          });
                        },
                      ),
                      title: Text(
                        tasks[index],
                        style: const TextStyle(
                            color: Color.fromRGBO(146, 106, 86, 1.0),
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text(tasks[index]),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 5.0,
                    ),
                  ],
                );
              },
              itemCount: tasks.length,
            ),
          ),
        ),
      );
}
