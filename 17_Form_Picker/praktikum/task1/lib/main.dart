import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Post')
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text('Cover'),
            const SizedBox(height:10),
            SizedBox(
              height: 30,
              width: 150,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)
                ),
                onPressed: () {},
                child: const Text(
                  'Pilih File',
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
              ),
            ),
            const Text('Publish At'),
            const SizedBox(height:10),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                hintText: 'dd/mm/yyyy'
              ),
            ),
            const SizedBox(height:10),
            const Text('Color Theme'),
            const SizedBox(height:10),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                hintText: 'pick color'
              ),
            ),
            const SizedBox(height:10),
            const Text('Caption'),
            const SizedBox(height:10),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 7,
              controller: TextEditingController(),
            ),
            const SizedBox(height:10),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                onPressed: () {},
                child: const Text(
                  'Simpan',
                  style: TextStyle(
                    color: Colors.white
                  )
                )
              )
            )
          ],
        ),
      )
    );
  }
}