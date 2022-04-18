import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/bloc/contact_event.dart';
import 'package:task2/bloc/contact_state.dart';
import 'package:task2/models/contact.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  late SharedPreferences _prefs;
  ContactsBloc() : super(ContactsState([])){
    on<AddContact>(_contactAdded);
    on<RemoveContact>(_contactRemoved);
    on<CheckContact>(_contactCheck);
  }

  void _contactAdded(AddContact event, Emitter<ContactsState> emit)  {
    emit(ContactsState(
      [...state.kontak, event.contact]..sort((a,b) => a.name.compareTo(b.name)))
    );
    _prefs.setStringList('name', state.kontak.map((e) => e.name).toList());
    _prefs.setStringList('phoneNumber', state.kontak.map((e) => e.phoneNumber).toList());
  }

  void _contactRemoved(RemoveContact event, Emitter<ContactsState> emit) {
    emit(ContactsState(
      [...state.kontak]..removeAt(event.contactIndex))
    );
    _prefs.remove('name');
    _prefs.remove('phoneNumber');
  }

  void _contactCheck(CheckContact event, Emitter<ContactsState> emit) async {
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.getStringList('name') !=null) {
      List<Contact> _contact = [];
      for (int i=0;i<_prefs.getStringList('name')!.length;i++){
        _contact.add(
          Contact(
            _prefs.getStringList('name')![i],
            _prefs.getStringList('phoneNumber')![i],
          ),
        );
      }
      _contact.sort((a,b) => a.name.compareTo(b.name));
      emit(ContactsState(_contact));
    }
  }
}