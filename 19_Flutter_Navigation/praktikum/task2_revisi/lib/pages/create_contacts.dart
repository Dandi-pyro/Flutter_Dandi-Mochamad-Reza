import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';
import 'package:task2_revisi/models/contacts.dart' as contact_store;
import 'package:task2_revisi/models/models.dart';
import 'package:task2_revisi/pages/home_page.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({ Key? key }) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _formKey = GlobalKey<FormBuilderState>();
  
  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact')
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FormBuilder(
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
                                _formKey.currentState!.save();
                                if (_formKey.currentState!.validate()) {
                                  print(_formKey.currentState!.value);
                                } else {
                                  print("validation failed");
                                }
                                contactProvider.add(
                                  GetContact(
                                    name: _formKey.currentState!.value['name'].toString(),
                                    phoneNumber: _formKey.currentState!.value['number'].toString(),
                                  )
                                );
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                  const MyHomePage()), (Route<dynamic> route) => false);
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        )
                      );
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
            ]
          ),
        ),
      )
    );
  }
}