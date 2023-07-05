part of 'message_bloc.dart';

@immutable
abstract class MessageState {}

class MessageInitial extends MessageState {}
class MessageState_loading extends MessageState {}
class MessageState_loaded extends MessageState {
  String msg;
  MessageState_loaded(this.msg);
}
class MessageState_error extends MessageState {
  String errorMsg;
  MessageState_error(this.errorMsg);
}
