import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:task2/show.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  String _dateTime = '';
  String _colorPick = '';
  String _description = '';
  String _image = '';
  Color _currentColor = Colors.blue;
  
  

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(() {
      _dateTime = myController.text;
    });
    myController2.addListener(() {
      _colorPick = myController2.text;
    });
    myController3.addListener(() {
      _description = myController3.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            buildFilePicker(),
            const SizedBox(height: 10,),
            buildDatePicker(context),
            const SizedBox(height: 10,),
            buildColorPicker(context),
            const SizedBox(height:10),
            const Text('Caption'),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 7,
              controller: myController3,
            ),
            const SizedBox(height:10),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ShowPage(image: _image, date: _dateTime, colors: _currentColor, description: _description),
                  ));
                },
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
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Publist At'),
        TextField(
          controller: myController,
          decoration: const InputDecoration(
            hintText: 'dd/mm/yyyy'
          ),
        )
      ],
    );
  }

  Widget buildColorPicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color Theme'),
        const SizedBox(height: 10),
        const SizedBox(height: 10),
        Center(
          child: TextField(
            controller: myController2,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Color'),
                    content: BlockPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (Color) {
                        setState(() {
                          _currentColor = Color;
                          myController2.text = _currentColor.toString();
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'))
                    ],
                  );
                }
              );
            },
            decoration: const InputDecoration(
              hintText: 'Pick a Color'
          ),
          ),
        )
      ],
    );
  }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Cover'),
        const SizedBox(height: 10,),
        Center(
          child: SizedBox(
            height: 30,
            width: 330,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)
              ),
              child: const Text('Pilih File'),
              onPressed: () {
                _pickFile();
              },
            ),
          )
        )
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
    );
    if (result == null) return;

    PlatformFile file = result.files.first;

    setState(() {
      _image = getFilePath(file);
    });

  }
  getFilePath(PlatformFile file){
    return file.path;
  }
}
