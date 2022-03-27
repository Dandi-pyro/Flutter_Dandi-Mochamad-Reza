import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 3',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Galery')
      ),
      body: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Images'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage("asset/img/Android.jpg")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              child: Ink.image(
                image: const AssetImage("asset/img/Android.jpg"),
                fit: BoxFit.cover,
              )
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Images'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage("asset/img/Aurora.jpg")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              child: Ink.image(
                image: const AssetImage("asset/img/Aurora.jpg"),
                fit: BoxFit.cover,
              )
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Images'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage("asset/img/Ios.jpg")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              child: Ink.image(
                image: const AssetImage("asset/img/Ios.jpg"),
                fit: BoxFit.cover,
              )
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Images'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage("asset/img/Flutter.png")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              child: Ink.image(
                image: const AssetImage("asset/img/Flutter.png"),
                fit: BoxFit.cover,
              )
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Images'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage("asset/img/RTX_GeForce.jpg")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              child: Ink.image(
                image: const AssetImage("asset/img/RTX_GeForce.jpg"),
                fit: BoxFit.cover,
              )
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Images'),
                    content: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage("asset/img/Sleepy.jpg")
                        )
                    ),
                    ),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )
                );
              },
              child: Ink.image(
                image: const AssetImage("asset/img/Sleepy.jpg"),
                fit: BoxFit.cover,
              )
            ),
          ],
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
        )
      )
    );
  }
}