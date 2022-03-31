import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/pages/create-contact.dart';
import 'package:task1/screen/list_screen.dart';
import 'package:task1/models/kontak_models.dart';
import 'empty_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contacts')
      ),
      body: buildTaskScreen(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add,color: Colors.white,),
        onPressed: (){
          final manager = Provider.of<CreateContact>(context, listen: false);
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreatePage(
                onCreate: (task) {
                  manager.addTask(task);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        }
      ),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<CreateContact>(
      builder: (context, Contact, child) {
        if (Contact.kontakModels.isNotEmpty) {
          return ListScreen(
            kontak: Contact,
          );
        } else {
          return const EmptyScreen();
        }
      },
    );
  }
}