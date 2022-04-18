import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/contact_bloc.dart';
import 'package:task2/bloc/contact_event.dart';
import 'package:task2/bloc/contact_state.dart';
import 'package:task2/models/contact.dart';
import 'package:task2/pages/blacklist_list.dart';
import 'package:task2/pages/home_page.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation){
                    return const BlacklistList();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final tween = Tween(begin: const Offset(0, 5), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            icon: const Icon(Icons.remove_from_queue_outlined)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            return Form(
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
                                    var kontak = Contact(_nameController.text, _numberController.text);
                                    context.read<ContactsBloc>().add(AddContact(kontak));
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyHomePage(),
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
            );
          }
        ),
      )
    );
  }
}
