import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/blacklist_bloc.dart';
import 'package:task2/bloc/blacklist_event.dart';
import 'package:task2/bloc/blacklist_state.dart';
import 'package:task2/bloc/contact_bloc.dart';
import 'package:task2/bloc/contact_event.dart';
import 'package:task2/bloc/contact_state.dart';
import 'package:task2/models/contact.dart';
import 'package:task2/pages/blacklist_list.dart';
import 'package:task2/pages/create_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    if (BlocProvider.of<ContactsBloc>(context).state.kontak.isEmpty) {
      BlocProvider.of<ContactsBloc>(context).add(CheckContact());
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
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
            return ListView.builder(
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
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add,color: Colors.white,),
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation){
                return const CreatePage(title: 'Create Contact',);
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
      ),
    );
  }
}
