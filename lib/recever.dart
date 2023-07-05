import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_bloc.dart';

class Recever extends StatefulWidget {
  const Recever({super.key});

  @override
  State<Recever> createState() => _ReceverState();
}

class _ReceverState extends State<Recever> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        if(state is MessageState_loaded){
          print(state.msg);
          return ListView.builder(
            itemCount: state.msg.length,
              itemBuilder: (contet,inde){
            return Center(child: Text(state.msg[inde]));
          });
        }
       return Container();
      },
    );
  }
}
