import 'package:flutter/material.dart';
import 'package:task2/home_page.dart';

class CreateContacts extends StatefulWidget {
  const CreateContacts({ Key? key }) : super(key: key);

  @override
  State<CreateContacts> createState() => _CreateContactsState();
}

class _CreateContactsState extends State<CreateContacts> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create New Contacts"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                  hintText: 'Name of the contact'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: myController2,
                decoration: const InputDecoration(
                  hintText: 'Number of the contact'
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Account'),
                    content: const Text('Add Contact?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ));
                        },
                        child: const Text('Yes'),
                      ),                    
                    ],
                  )
                );
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ),
          ]
        ),
      ),
    );
  }
}