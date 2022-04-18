import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/bloc/blacklist_event.dart';
import 'package:task2/bloc/blacklist_state.dart';
import 'package:task2/models/contact.dart';

class BlacklistBloc extends Bloc<BlacklistEvent, BlacklistState> {
  late SharedPreferences prefs;
  BlacklistBloc() : super(BlacklistState([])){
    on<AddBlacklist>(_contactAdded);
    on<RemoveBlacklist>(_contactRemoved);
    on<CheckBlacklist>(_contactCheck);
  }

  void _contactAdded(AddBlacklist event, Emitter<BlacklistState> emit)  {
    emit(BlacklistState(
      [...state.kontakBlackList, event.contacts]..sort((a,b) => a.name.compareTo(b.name)))
    );
    prefs.setStringList('name', state.kontakBlackList.map((e) => e.name).toList());
    prefs.setStringList('phoneNumber', state.kontakBlackList.map((e) => e.phoneNumber).toList());
  }

  void _contactRemoved(RemoveBlacklist event, Emitter<BlacklistState> emit) {
    emit(BlacklistState(
      [...state.kontakBlackList]..removeAt(event.contactsIndex))
    );
    prefs.remove('name');
    prefs.remove('phoneNumber');
  }

  void _contactCheck(CheckBlacklist event, Emitter<BlacklistState> emit) async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList('name')!=null) {
      List<Contact> _contact = [];
      for (int i=0;i<prefs.getStringList('name')!.length;i++){
        _contact.add(
          Contact(
            prefs.getStringList('name')![i],
            prefs.getStringList('phoneNumber')![i],
          ),
        );
      }
      _contact.sort((a,b) => a.name.compareTo(b.name));
      emit(BlacklistState(_contact));
    }
  }
}