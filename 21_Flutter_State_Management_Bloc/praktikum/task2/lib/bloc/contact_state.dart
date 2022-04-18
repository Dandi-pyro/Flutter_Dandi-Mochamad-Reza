import 'package:equatable/equatable.dart';
import 'package:task2/models/contact.dart';

class ContactsState extends Equatable {
  final List<Contact> kontak;
  const ContactsState(this.kontak);

  @override
  List<Object?> get props => [kontak];
}
