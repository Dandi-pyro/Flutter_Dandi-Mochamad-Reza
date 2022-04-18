import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/model/contact_model.dart';
import 'package:task1/screen/contact/contact_screen.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({ Key? key }) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact')
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name of The Contact',
                  border: OutlineInputBorder(),
                  hintText: 'Name of The Contact'
                ),
                validator: (value) {
                  if (value!.isNotEmpty && value.length <4) {
                    return 'Enter At Least 4 Characters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _numberController,
                decoration: const InputDecoration(
                  labelText: 'Number of The Contact',
                  border: OutlineInputBorder(),
                  hintText: 'Number of The Contact'
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isNotEmpty && value.length < 4) {
                    return 'Enter At Least 4 Characters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Add Contact'),
                          content: const Text('Do you want to add this contact?'),
                          actions: <Widget>[
                            TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                contactProvider.addContacts(Contact(name: _nameController.text, phone: _numberController.text));
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ContactScreen(),
                                  ),
                                  (route) => false);
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        )
                      );
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Reset",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                  ),
                ],
              ),
            ]
          ),
        ),
      )
    );
  }
}