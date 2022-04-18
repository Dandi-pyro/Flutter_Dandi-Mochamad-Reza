import 'package:equatable/equatable.dart';
import 'package:task2/models/contact.dart';

abstract class BlacklistEvent extends Equatable {
  const BlacklistEvent();
}

class AddBlacklist extends BlacklistEvent {
  final Contact contacts;

  const AddBlacklist(this.contacts);

  @override
  List<Object?> get props => [contacts];
}

class RemoveBlacklist extends BlacklistEvent {
  final int contactsIndex;

  const RemoveBlacklist(this.contactsIndex);

  @override
  List<Object?> get props => [contactsIndex];
}