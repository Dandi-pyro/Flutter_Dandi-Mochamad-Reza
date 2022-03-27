import 'package:digabung/home_page/home_page_AD.dart';
import 'package:digabung/home_page/home_page_BS.dart';
import 'package:flutter/material.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({ Key? key }) : super(key: key);

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Galery')
      ),
      body: Center(
        child: Column(
          children:  [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text('Pilih mode yang akan digunakan'),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const BottomSheetPage(),
                      ));
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('BottomSheet', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const AlertDialogPage(),
                      ));
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('AlertDialog', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              )
          ],
        ),
      )
    );
  }
}