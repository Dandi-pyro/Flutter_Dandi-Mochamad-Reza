import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:task1/models.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1 Revisi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Contact'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  List<GetContact> _contactList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                      final _contact = GetContact(name: _formKey.currentState!.value['name'].toString(), phoneNumber: _formKey.currentState!.value['number'].toString(),);
                      setState(() {
                        _contactList.add(_contact);
                      });
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
              Expanded(
                child: ListView.builder(
                  itemCount: _contactList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_contactList[index].name),
                      subtitle: Text(_contactList[index].phoneNumber),
                      onTap: () {},
                    );
                  },
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
