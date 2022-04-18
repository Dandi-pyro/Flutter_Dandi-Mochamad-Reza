import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/blacklist_event.dart';
import 'package:task2/bloc/blacklist_state.dart';

class BlacklistBloc extends Bloc<BlacklistEvent, BlacklistState> {
  BlacklistBloc() : super(BlacklistState([])){
    on<AddBlacklist>(_contactAdded);
    on<RemoveBlacklist>(_contactRemoved);
  }

  void _contactAdded(AddBlacklist event, Emitter<BlacklistState> emit){
    emit(BlacklistState([...state.kontakBlackList, event.contacts]));
  }

  void _contactRemoved(RemoveBlacklist event, Emitter<BlacklistState> emit){
    emit(BlacklistState([...state.kontakBlackList]..removeAt(event.contactsIndex)));
  }
}