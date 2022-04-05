import 'package:flutter/cupertino.dart';
import 'package:task2/models/models.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void add(GetContact contact){
    _contacts.add(contact);
    notifyListeners();
  }
}