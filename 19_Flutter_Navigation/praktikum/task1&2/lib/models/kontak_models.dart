import 'package:flutter/cupertino.dart';
import 'package:task1/models/models.dart';

class CreateContact extends ChangeNotifier {
  final _kontakModels = <Kontak>[
    Kontak(nama:'Dream', nomor: '080865437890'),
    Kontak(nama:'Drista', nomor: '080843262546'),
    Kontak(nama:'Ei', nomor: '080865437890'),
    Kontak(nama:'Erina', nomor: '081847223416'),
    Kontak(nama:'Feren', nomor: '083179126942'),
    Kontak(nama:'George', nomor: '088885249367'),
    Kontak(nama:'Jimmy', nomor: '084824564567'),
    Kontak(nama:'March', nomor: '081252345687'),
    Kontak(nama:'Tommy', nomor: '082162389351'),
  ];
  
  List<Kontak> get kontakModels => List.unmodifiable(_kontakModels);

  void deleteTask(int index) {
    _kontakModels.removeAt(index);
    notifyListeners();
  }

  void addTask(Kontak task) {
    _kontakModels.add(task);
    notifyListeners();
  }
}