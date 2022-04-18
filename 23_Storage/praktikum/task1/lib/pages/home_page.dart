import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/pages/create_page.dart';
import 'package:task1/stores/contacts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);
    if (contactProvider.contacts.isEmpty) {
      contactProvider.check();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: contactProvider.contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(contactProvider.contacts[index].name),
              subtitle: Text(contactProvider.contacts[index].phoneNumber),
              leading: const CircleAvatar(backgroundImage: AssetImage('asset/img/photo_icon.png'),),
              trailing: IconButton(
                icon: const Icon(Icons.delete_forever_outlined),
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
                            contactProvider.delete(index);
                            Navigator.pop(context, 'Yes');
                          },
                          child: const Text('Yes'),
                        ),
                      ]
                    )
                  );
                },
              ),
              onTap: () {},
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add,color: Colors.white,),
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation){
                return const CreatePage();
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