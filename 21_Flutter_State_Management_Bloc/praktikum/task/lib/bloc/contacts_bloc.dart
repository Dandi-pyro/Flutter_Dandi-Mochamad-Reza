import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/contacts_event.dart';
import 'package:task/bloc/contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(ContactsState([])){
    on<AddContact>(_contactAdded);
    on<RemoveContact>(_contactRemoved);
  }

  void _contactAdded(AddContact event, Emitter<ContactsState> emit){
    emit(ContactsState([...state.kontak, event.contact]));
  }

  void _contactRemoved(RemoveContact event, Emitter<ContactsState> emit){
    emit(ContactsState([...state.kontak]..removeAt(event.contactIndex)));
  }
}

