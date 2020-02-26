import 'package:fii/bloc/balance_bloc.dart';
import 'package:fii/bloc/contacts.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() => runApp(KazakhBank());

class KazakhBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ContactsBloc _cBloc = ContactsBloc();
    final BalanceBloc _bBloc = BalanceBloc();
    return MaterialApp(
      title: 'Kazakh Bank App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        backgroundColor: Colors.white,
      ),
      home: App(
        title: 'Kazakh Bank',
      ),
    );
  }
}
