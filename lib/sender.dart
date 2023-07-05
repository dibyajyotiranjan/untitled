import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/message_bloc.dart';

class Sender extends StatefulWidget {
  const Sender({super.key});

  @override
  State<Sender> createState() => _SenderState();
}

class _SenderState extends State<Sender> {
  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<MessageBloc, MessageState>(
      //listenWhen: (previous,current)=>true,
      listener: (context, state) {
        if(state is MessageState_loaded){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("data added Sucessfully")));
        }
      },
      child: Column(
        children: [
          Text("Sending Message..."),
          SizedBox(height: 60,),
          TextField(
            controller: text,

          ),
          ElevatedButton(onPressed: () {
            context.read<MessageBloc>().add(messageEvent(text.text.toString()));
          }, child: Text("Enter Message"))
        ],
      ),
    );
  }
}
