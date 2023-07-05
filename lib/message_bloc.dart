import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial()) {
    on<messageEvent>((event, emit) async{
      emit(MessageState_loading());

      event.tet!= ""?emit(MessageState_loaded(event.tet)):emit(MessageState_loading());

      // TODO: implement event handler
    });
  }
}
