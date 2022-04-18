import 'package:flutter/cupertino.dart';
import 'package:task2_revisi/models/models.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [
    GetContact(name: 'Faiz Rofi Hencya',phoneNumber: '08123469420'),
    GetContact(name: 'Muhammad Ali Fikri',phoneNumber: '08124861642'),
    GetContact(name: 'Yudha Yasa Aprijal Briano',phoneNumber: '083349751104'),
  ];
  List<GetContact> get contacts => _contacts;

  void add(GetContact contact){
    _contacts.add(contact);
    notifyListeners();
  }

  void delete(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}