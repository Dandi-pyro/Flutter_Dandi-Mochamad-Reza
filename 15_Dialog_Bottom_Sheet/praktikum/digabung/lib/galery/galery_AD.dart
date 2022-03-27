import 'package:flutter/material.dart';

class GaleryAD extends StatefulWidget {
  const GaleryAD({ Key? key }) : super(key: key);

  @override
  State<GaleryAD> createState() => _GaleryADState();
}

class _GaleryADState extends State<GaleryAD> {
  @override
  Widget build(BuildContext context) {
    return Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GridView.count(
          crossAxisCount: 3,
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
                        image: AssetImage("asset/img/Chandler.jpg")
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
                image: const AssetImage("asset/img/Chandler.jpg"),
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
                        image: AssetImage("asset/img/Chris.jpg")
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
                image: const AssetImage("asset/img/Chris.jpg"),
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
                        image: AssetImage("asset/img/Dream.jpg")
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
                image: const AssetImage("asset/img/Dream.jpg"),
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
                        image: AssetImage("asset/img/Drista.jpg")
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
                image: const AssetImage("asset/img/Drista.jpg"),
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
                        image: AssetImage("asset/img/George.jpg")
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
                image: const AssetImage("asset/img/George.jpg"),
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
                        image: AssetImage("asset/img/Karl.jpg")
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
                image: const AssetImage("asset/img/Karl.jpg"),
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
                        image: AssetImage("asset/img/MrBeast.jpg")
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
                image: const AssetImage("asset/img/MrBeast.jpg"),
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
                        image: AssetImage("asset/img/Techno.jpg")
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
                image: const AssetImage("asset/img/Techno.jpg"),
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
                        image: AssetImage("asset/img/Tommy.jpg")
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
                image: const AssetImage("asset/img/Tommy.jpg"),
                fit: BoxFit.cover,
              )
            ),
          ],
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
        )
      );
  }
}