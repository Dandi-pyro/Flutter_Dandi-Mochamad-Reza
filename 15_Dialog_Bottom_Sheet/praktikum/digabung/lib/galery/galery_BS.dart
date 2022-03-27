import 'package:flutter/material.dart';

class GaleryBS extends StatefulWidget {
  const GaleryBS({ Key? key }) : super(key: key);

  @override
  State<GaleryBS> createState() => _GaleryBSState();
}

class _GaleryBSState extends State<GaleryBS> {
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
                                  image: AssetImage("asset/img/Drista.jpg")
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
                image: const AssetImage('asset/img/Drista.jpg'),
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
                                  image: AssetImage("asset/img/Flutter.png")
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
                image: const AssetImage('asset/img/Flutter.png'),
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
                                  image: AssetImage("asset/img/George.jpg")
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
                image: const AssetImage('asset/img/George.jpg'),
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
                                  image: AssetImage("asset/img/Ios.jpg")
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
                image: const AssetImage('asset/img/Ios.jpg'),
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
                                  image: AssetImage("asset/img/Karl.jpg")
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
                image: const AssetImage('asset/img/Karl.jpg'),
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
                                  image: AssetImage("asset/img/MrBeast.jpg")
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
                image: const AssetImage('asset/img/MrBeast.jpg'),
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
                                  image: AssetImage("asset/img/RTX_GeForce.jpg")
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
                image: const AssetImage('asset/img/RTX_GeForce.jpg'),
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
                                  image: AssetImage("asset/img/Techno.jpg")
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
                image: const AssetImage('asset/img/Techno.jpg'),
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
                                  image: AssetImage("asset/img/Tommy.jpg")
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
                image: const AssetImage('asset/img/Tommy.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
        ),
      );
  }
}