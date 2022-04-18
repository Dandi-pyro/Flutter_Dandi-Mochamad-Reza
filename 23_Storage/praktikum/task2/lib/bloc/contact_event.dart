import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/models/contact.dart';

abstract class ContactsEvent extends Equatable {
  const ContactsEvent();
}
class CheckContact extends ContactsEvent {
  @override
  List<Object?> get props => [];
}

class AddContact extends ContactsEvent {
  final Contact contact;

  const AddContact(this.contact);

  @override
  List<Object?> get props => [contact];
}

class RemoveContact extends ContactsEvent {
  final int contactIndex;

  const RemoveContact(this.contactIndex);

  @override
  List<Object?> get props => [contactIndex];
}