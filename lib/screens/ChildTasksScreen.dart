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
  final Color _color2 = const Color.fromRGBO(62, 255, 7, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Окно',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(200, 154, 132, 1.0),
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: const Icon(Icons.notifications_outlined,
                  color: Color.fromRGBO(116, 56, 113, 1.0)),
              onPressed: () => Navigator.pop(
                  context, false)), //нужно изменить работу иконки при нажатии
        ),
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
                padding: EdgeInsets.fromLTRB(15, 0, 15, 120),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 50),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(15), //отступы текста от карты
                    child: Center(
                      child: Text(
                        'ваш комментарий из бд вот тут вставляйте-окно изменяется под размер комментария',
                        style: TextStyle(fontSize: 19),
                      ),
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

  _list() => Expanded(
        child: Card(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 80),
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
