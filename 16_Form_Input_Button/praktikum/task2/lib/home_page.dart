import 'package:flutter/material.dart';
import 'package:task2/create_contacts.dart';

import 'models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create New Contact')
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: const CircleAvatar(),
            title: Text(items[index].nama),
            subtitle: Text(items[index].nomor),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,color: Colors.white,),
        backgroundColor: const Color.fromARGB(255, 0, 110, 255),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => const CreateContacts(),
          ));
        },
      ),
    );
  }
}