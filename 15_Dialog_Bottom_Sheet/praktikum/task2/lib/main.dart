import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/img/Android.jpg")
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                );  
              },
              child: Ink.image(
                image: const AssetImage('asset/img/Android.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/img/Aurora.jpg")
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                );  
              },
              child: Ink.image(
                image: const AssetImage('asset/img/Aurora.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/img/Chandler.jpg")
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                );  
              },
              child: Ink.image(
                image: const AssetImage('asset/img/Chandler.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/img/Chris.jpg")
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                );  
              },
              child: Ink.image(
                image: const AssetImage('asset/img/Chris.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/img/Dream.jpg")
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                );  
              },
              child: Ink.image(
                image: const AssetImage('asset/img/Dream.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  context: context, 
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/img/Sleepy.jpg")
                              )
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                );  
              },
              child: Ink.image(
                image: const AssetImage('asset/img/Sleepy.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
        ),
      )
    );
  }
}