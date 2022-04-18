import 'package:equatable/equatable.dart';
import 'package:task2/models/contact.dart';

class BlacklistState extends Equatable {
  final List<Contact> kontakBlackList;
  const BlacklistState(this.kontakBlackList);

  @override
  List<Object?> get props => [kontakBlackList];
}
