import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final person = List<String>.generate(50, (i) => 'Person $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
                trailing: const Icon(Icons.call),
                title: Text(person[index + 1]),
              ),
            );
          },
        ),
      ),
    );
  }
}
