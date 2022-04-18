import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/models/models.dart';

class Contact with ChangeNotifier {
  List<GetContact> _contacts = [];
  late SharedPreferences _list;

  List<GetContact> get contacts => _contacts;
  SharedPreferences get list => _list;

  void check() async {
    _list = await SharedPreferences.getInstance();
    if (_list.getStringList('name') != null) {
      for(int i=0;i<_list.getStringList('name')!.length;i++) {
        _contacts.add(GetContact(name: _list.getStringList('name')![i], phoneNumber: _list.getStringList('phoneNumber')![i]));
        _contacts.sort(((a, b) => a.name.compareTo(b.name)));
        notifyListeners();
      }
    }
  }

  void add(GetContact contact) {
    _contacts.add(contact);
    _contacts.sort(((a, b) => a.name.compareTo(b.name)));
    notifyListeners();
    _list.setStringList('name', _contacts.map((e) => e.name).toList());
    _list.setStringList('phoneNumber', _contacts.map((e) => e.phoneNumber).toList());
  }

  void delete(int index) {
    _contacts.removeAt(index);
    notifyListeners();
    _list.remove('name');
    _list.remove('phoneNumber');
  }
}