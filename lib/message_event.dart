part of 'message_bloc.dart';

@immutable
abstract class MessageEvent {}
class messageEvent extends MessageEvent{
String tet;
  messageEvent(this.tet);
}