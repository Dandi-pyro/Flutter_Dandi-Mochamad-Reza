import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/blacklist_bloc.dart';
import 'package:task2/bloc/blacklist_event.dart';
import 'package:task2/bloc/blacklist_state.dart';
import 'package:task2/bloc/contact_bloc.dart';
import 'package:task2/bloc/contact_event.dart';
import 'package:task2/bloc/contact_state.dart';

class BlacklistList extends StatefulWidget {
  const BlacklistList({ Key? key }) : super(key: key);

  @override
  State<BlacklistList> createState() => _BlacklistListState();
}

class _BlacklistListState extends State<BlacklistList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blacklist")
      ),
      body: BlocBuilder<BlacklistBloc, BlacklistState>(
        builder: (context, state) {
          return BlocBuilder<ContactsBloc, ContactsState>(
            builder: (contexts, states) {
              return ListView.builder(
                itemCount: state.kontakBlackList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.kontakBlackList[index].name),
                    subtitle: Text(state.kontakBlackList[index].phoneNumber),
                    trailing: TextButton(
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
                                  contexts.read<ContactsBloc>().add(AddContact(state.kontakBlackList[index]));
                                  context.read<BlacklistBloc>().add(RemoveBlacklist(index));
                                  Navigator.pop(context, 'Yes');
                                },
                                child: const Text('Yes'),
                              ),
                            ],
                          )
                        );
                      },
                      child: const Text('Restore')
                    ),
                  );
                }
              );
            }
          );
        }
      ),
    );
  }
}