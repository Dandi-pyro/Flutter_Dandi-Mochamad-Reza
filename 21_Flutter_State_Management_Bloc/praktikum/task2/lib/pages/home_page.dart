import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:task2/bloc/blacklist_bloc.dart';
import 'package:task2/bloc/blacklist_event.dart';
import 'package:task2/bloc/blacklist_state.dart';
import 'package:task2/bloc/contact_bloc.dart';
import 'package:task2/bloc/contact_event.dart';
import 'package:task2/bloc/contact_state.dart';
import 'package:task2/models/contact.dart';
import 'package:task2/pages/blacklist_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormBuilderState>();
  
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
            return FormBuilder(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'name',
                    decoration: const InputDecoration(
                      labelText: 'Name of The Contact',
                      border: OutlineInputBorder(),
                      hintText: 'Name of The Contact'
                    ),
                  ),
                  const SizedBox(height: 10),
                  FormBuilderTextField(
                    name: 'number',
                    decoration: const InputDecoration(
                      labelText: 'Number of The Contact',
                      border: OutlineInputBorder(),
                      hintText: 'Number of The Contact'
                    ),
                    validator: FormBuilderValidators.numeric(context, errorText: 'Required Numbers')
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        color: Theme.of(context).colorScheme.secondary,
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          _formKey.currentState!.save();
                          if (_formKey.currentState!.validate()) {
                            print(_formKey.currentState!.value);
                          } else {
                            print("validation failed");
                          }
                          var kontak = Contact(_formKey.currentState!.value['name'].toString(), _formKey.currentState!.value['number'].toString());
                          context.read<ContactsBloc>().add(AddContact(kontak));
                        },
                      ),
                      MaterialButton(
                        color: Theme.of(context).colorScheme.secondary,
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
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.kontak.length,
                      itemBuilder: (context, index) {
                        return BlocBuilder<BlacklistBloc, BlacklistState>(
                          builder: (contexts, states) {
                            return ListTile(
                              title: Text(state.kontak[index].name),
                              subtitle: Text(state.kontak[index].phoneNumber),
                              leading: IconButton(
                                icon: const Icon(
                                  Icons.remove_from_queue),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text('Are you sure?'),
                                        actions: <Widget>[
                                          TextButton(
                                          onPressed: () => Navigator.pop(context, 'Cancel'),
                                          child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              contexts.read<BlacklistBloc>().add(AddBlacklist(state.kontak[index]));
                                              context.read<ContactsBloc>().add(RemoveContact(index));
                                              Navigator.pop(context, 'Yes');
                                            },
                                            child: const Text('Yes'),
                                          ),
                                        ],
                                      )
                                    );
                                  },
                                ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete_forever),
                                  onPressed: () {
                                    context.read<ContactsBloc>().add(RemoveContact(index));
                                  },
                                ),
                              onTap: () {},
                            );
                          }
                          
                        );
                      }
                    )
                  )
                ]
              ),
            );
          }
        ),
      )
    );
  }
}
