import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:task1/models/models.dart';

class CreatePage extends StatefulWidget {
  final Function(Kontak) onCreate;
  const CreatePage({ Key? key, required this.onCreate }) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Contact'),
      ),
      body: FormBuilder(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Padding(
          padding: const EdgeInsets.all(20),
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
                  final addKontak = Kontak(
                    nama: _formKey.currentState!.value['name'].toString(),
                    nomor: _formKey.currentState!.value['number'].toString()
                  );
                  widget.onCreate(addKontak);
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
        )
      )
    );
  }
}