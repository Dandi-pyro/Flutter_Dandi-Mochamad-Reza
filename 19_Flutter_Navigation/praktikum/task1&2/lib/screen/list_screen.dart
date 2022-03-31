import 'package:flutter/material.dart';
import 'package:task1/models/kontak_models.dart';

class ListScreen extends StatelessWidget {
  final CreateContact kontak;
  ListScreen({Key? key, required this.kontak}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final _listKontak = kontak.kontakModels;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: _listKontak.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const CircleAvatar(),
            title: Text(_listKontak[index].nama),
            subtitle: Text(_listKontak[index].nomor),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete'),
                    content: const Text('Are you Sure?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          kontak.deleteTask(index);
                          Navigator.pop(context);
                        },
                      child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              icon: const Icon(Icons.delete_forever)
            ),
            onTap: () {}
          );
        }
      ),
    );
  }
}