import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => ValueNotifier<Brightness>(Brightness.light),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Telegram Chat',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.create_sharp)
        ),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.pop(context),
          child: const Text('Edit')
        ),
        backgroundColor: Colors.white,
        middle: const Text('Chat'),
        ),
      child: SafeArea(
        child: CupertinoScrollbar(
          child: ListView(
            children: <Widget>[
              CupertinoSearchTextField(
                onChanged: (String value) {
                  print('The text has changed to: $value');
                },
                onSubmitted: (String value) {
                  print('Submitted text: $value');
                },
              ),
              CupertinoListTile(
                title: Text('Dream'),
                leading: Image.asset('asset/img/Dream.jpg'),
                subtitle: Text('Come Join Dream SMP')
              ),
              CupertinoListTile(
                title: Text('George'),
                leading: Image.asset('asset/img/george.jpg'),
                subtitle: Text('Hey you wanna become the 6th Hunter of teh manhunt?')
              ),
              CupertinoListTile(
                title: Text('Tom Simon'),
                leading: Image.asset('asset/img/Tommy.jpg'),
                subtitle: Text('Jump in the cadillac')
              ),
              CupertinoListTile(
                title: Text('Drista'),
                leading: Image.asset('asset/img/Drista.jpg'),
                subtitle: Text('Hey can you tell tommy to on?')
              ),
              CupertinoListTile(
                title: Text('MrBeast'),
                leading: Image.asset('asset/img/MrBeast.jpg'),
                subtitle: Text('Hei come join the Extreme Hide and Seek challange for 1.000.000 dollars')
              ),
              CupertinoListTile(
                title: Text('Chris Tyson'),
                leading: Image.asset('asset/img/Chris.jpg'),
                subtitle: Text('Yo come here the hommies are waiting for you')
              ),
              CupertinoListTile(
                title: Text('Chandler Hallow'),
                leading: Image.asset('asset/img/Chandler.jpg'),
                subtitle: Text('Hey come here they waiting for you!!')
              ),
              CupertinoListTile(
                title: Text('Karl Jacobs'),
                leading: Image.asset('asset/img/Karl.jpg'),
                subtitle: Text('Come here dude!!')
              ),
              CupertinoListTile(
                title: Text('Techno'),
                leading: Image.asset('asset/img/Techno.jpg'),
                subtitle: Text('Hey are you gonna join the MCC?')
              ),
            ]
          )
        )
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle),
            label: 'Contacts',
            ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
            ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Text('Content of tab $index'),
            );
          },
        );
      },
    );
  }
}
