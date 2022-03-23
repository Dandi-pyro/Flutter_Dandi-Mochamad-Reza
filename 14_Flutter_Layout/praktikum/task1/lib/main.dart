import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Messenger App'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Dream'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Dream.jpg'),
              ),
            trailing: Text('07.30'),
            subtitle: Text('Come Join Dream SMP')
          ),
          ListTile(
            title: Text('George'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/george.jpg'),
              ),
            trailing: Text('06.00'),
            subtitle: Text('Hey you wanna become the 6th Hunter of the manhunt?')
          ),
          ListTile(
            title: Text('Tom Simon'),
            trailing: Text('Yesterday'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Tommy.jpg'),
              ),
            subtitle: Text('Jump in the cadillac')
          ),
          ListTile(
            title: Text('Drista'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Drista.jpg'),
              ),
            trailing: Text('Yesterday'),
            subtitle: Text('Hey can you tell tommy to on?')
          ),
          ListTile(
            title: Text('MrBeast'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/MrBeast.jpg'),
              ),
            trailing: Text('7 March'),
            subtitle: Text('Hei come join the Extreme Hide and Seek challange for 1.000.000 dollars')
          ),
          ListTile(
            title: Text('Chris Tyson'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Chris.jpg'),
              ),
            trailing: Text('7 March'),
            subtitle: Text('Yo come here the hommies are waiting for you')
          ),
          ListTile(
            title: Text('Chandler Hallow'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Chandler.jpg'),
              ),
            trailing: Text('7 March'),
            subtitle: Text('Hey come here they waiting for you!!')
          ),
          ListTile(
            title: Text('Karl Jacobs'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Karl.jpg'),
              ),
            trailing: Text('7 March'),
            subtitle: Text('Come here dude!!')
          ),
          ListTile(
            title: Text('Techno'),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage('asset/img/Techno.jpg'),
              ),
            trailing: Text('1 March'),
            subtitle: Text('Hey are you gonna join the MCC?')
          ),
        ]
      )
    );
  }
}
