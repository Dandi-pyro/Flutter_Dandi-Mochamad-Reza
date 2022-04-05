import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:task2/models/models.dart';
import 'package:task2/stores/contact.dart' as contact_store;

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact')
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
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        print(_formKey.currentState!.value);
                      } else {
                        print("validation failed");
                      }
                      contactProvider.add(GetContact(name: _formKey.currentState!.value['name'].toString(), phoneNumber: _formKey.currentState!.value['number'].toString(),));
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
                  itemCount: contactProvider.contacts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(contactProvider.contacts[index].name),
                      subtitle: Text(contactProvider.contacts[index].phoneNumber),
                      onTap: () {},
                    );
                  }
                )
              )
            ]
          ),
        ),
      )
    );
  }
}