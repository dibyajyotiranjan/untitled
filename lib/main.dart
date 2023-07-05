import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/recever.dart';
import 'package:untitled/sender.dart';

import 'message_bloc.dart';

void main() {
  runApp(BlocProvider<MessageBloc>(
    create: (context) => MessageBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(child: Recever()),
            Expanded(child: Sender()),
          ],
        ),
      ),
    );
  }
}
